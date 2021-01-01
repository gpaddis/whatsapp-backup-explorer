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
FactoryBot.define do
  factory :message do
    key_remote_jid { create(:jid) }
    key_from_me { 1 }
    key_id { Faker::String.random(length: 32) }
    status { 'normal' }
    needs_push { 0 }
    data { nil }
    timestamp { Time.now.to_i }
    media_url { nil }
    media_mime_type { nil }
    media_wa_type { nil }
    media_size { 19 }
    media_name { nil }
    media_hash { nil }
    media_duration { 0 }
    origin { 0 }
    latitude { 0.0 }
    longitude { 0.0 }
    thumb_image { nil }
    author { nil }
    received_timestamp { Time.now.to_i }
    send_timestamp { -1 }
    receipt_server_timestamp { -1 }
    receipt_device_timestamp { -1 }
    raw_data { nil }
    recipient_count { 17 }
    read_device_timestamp { nil }
    played_device_timestamp { nil }
    media_caption { nil }
    participant_hash { "1:#{Faker::String.random(length: 8)}" }
    starred { nil }
    quoted_row_id { 0 }
    mentioned_jids { nil }
    multicast_id { nil }
    edit_version { 0 }
    media_enc_hash { nil }
    payment_transaction_id { nil }
    forwarded { 0 }
    preview_type { 0 }
    send_count { nil }
  end
end
