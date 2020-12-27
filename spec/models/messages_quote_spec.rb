# == Schema Information
#
# Table name: messages_quotes
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
require 'rails_helper'

RSpec.describe MessagesQuote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
