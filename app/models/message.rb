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
class Message < ApplicationRecord
  belongs_to :jid, foreign_key: 'key_remote_jid', primary_key: 'raw_string'
  belongs_to :author, class_name: 'Jid', foreign_key: 'remote_resource', primary_key: 'raw_string'
  has_many :messages_links, foreign_key: 'message_row_id'

  default_scope { includes(:author) }
end
