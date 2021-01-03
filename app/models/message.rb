# == Schema Information
#
# Table name: messages
#
#  data                     :text
#  edit_version             :integer
#  forwarded                :integer
#  key_from_me              :integer
#  key_remote_jid           :text             not null
#  latitude                 :REAL
#  longitude                :REAL
#  media_caption            :text
#  media_duration           :integer
#  media_enc_hash           :text
#  media_hash               :text
#  media_mime_type          :text
#  media_name               :text
#  media_size               :integer
#  media_url                :text
#  media_wa_type            :text
#  mentioned_jids           :text
#  needs_push               :integer
#  origin                   :integer
#  participant_hash         :text
#  played_device_timestamp  :integer
#  preview_type             :integer
#  raw_data                 :binary
#  read_device_timestamp    :integer
#  receipt_device_timestamp :integer
#  receipt_server_timestamp :integer
#  received_timestamp       :integer
#  recipient_count          :integer
#  remote_resource          :text
#  send_count               :integer
#  send_timestamp           :integer
#  starred                  :integer
#  status                   :integer
#  thumb_image              :text
#  timestamp                :integer
#  _id                      :integer          primary key
#  key_id                   :text             not null
#  multicast_id             :text
#  payment_transaction_id   :text
#  quoted_row_id            :integer
#
# Indexes
#
#  media_hash_index       (media_hash)
#  media_type_index       (media_wa_type)
#  media_type_jid_index   (key_remote_jid,media_wa_type)
#  messages_jid_id_index  (key_remote_jid,_id)
#  messages_key_index     (key_remote_jid,key_from_me,key_id) UNIQUE
#  starred_index          (starred)
#

# A message is generally a piece of conversation sent by the user. However, in a group context
# it can also be a more generic "service" notification, e.g. when someone changes the group name.
# A standard message belongs to an author who sent it (internally references as remote_resource).
class Message < ApplicationRecord
  belongs_to :jid, foreign_key: 'key_remote_jid', primary_key: 'raw_string', optional: true
  belongs_to :author, class_name: 'Jid', foreign_key: 'remote_resource', primary_key: 'raw_string', optional: true
  has_many :messages_links, foreign_key: 'message_row_id'
  has_one :message_thumbnail, foreign_key: 'key_id', primary_key: 'key_id'

  default_scope { includes(:author, :message_thumbnail) }

  # For now, only 'default' and 'service' are relevant.
  enum status: {
    'default': 0,
    'status_4': 4,
    'status_5': 5,
    'service': 6,
    'status_8': 8,
    'status_9': 9,
    'status_10': 10,
    'status_12': 12,
    'status_13': 13
  }

  # This enum does not seem to be actively used for media
  # identification. Better rely on media_mime_type for that.
  enum media_wa_type: {
    'text': 0,
    'image': 1,
    'audio': 2,
    'video': 3,
    'media_wa_type_4': 4,
    'media_wa_type_5': 5,
    'document': 9,
    'media_wa_type_10': 10,
    'media_wa_type_11': 11,
    'video/mp4': 13,
    'media_wa_type_16': 16,
    'image/webp': 20
  }

  # Return the action for a service message according to its properties.
  #
  # @return [Symbol|nil]
  def service_action
    return unless status == 'service'

    return :default unless author.present?
    return :changed_group_picture if media_size == 6

    if thumb_image_phone_number
      return :added_to_group if media_duration.positive?
      return :added_admin if media_size == 15
      # TODO: in some cases, 12 means "added_to_group". Find a pattern.
      return :kicked_from_group if media_size == 12 || media_size == 14
    end
    return :group_name_changed if data.present?
  end

  # The target phone number of a service action is in a binary Java ArrayList
  # stored in the field thumb_image as a blob.
  #
  # @return [String|nil] the phone number
  def thumb_image_phone_number
    return nil unless thumb_image

    thumb_image&.match(/(\d{6,})@/)&.captures&.first
  end

  # Return the full path to the media, if it exists on the disk.
  #
  # @return [String|nil]
  def media_file_path
    allowed_media_types = [
      'audio/aac',
      'audio/ogg; codecs=opus',
      'image/jpeg'
    ]
    return nil unless allowed_media_types.include?(media_mime_type)

    file_path = thumb_image&.match(%r{(Media\/.*(?:opus|m4a|jpg))})&.captures&.first
    "WhatsApp/#{file_path}" if file_path && File.exist?(Rails.root.join("public/WhatsApp/#{file_path}"))
  end

  # Read the content of the media file associated with the message and encode it in base64.
  #
  # @return [String|nil]
  def media_file_content_base64
    return nil unless media_file_path && File.exist?(media_file_path)

    Base64.encode64(File.read(media_file_path))
  end
end
