# == Schema Information
#
# Table name: message_media
#
#  autotransfer_retry_enabled   :integer
#  direct_path                  :text
#  enc_file_hash                :text
#  face_x                       :integer
#  face_y                       :integer
#  file_hash                    :text
#  file_length                  :integer
#  file_path                    :text
#  file_size                    :integer
#  first_scan_length            :integer
#  first_scan_sidecar           :binary
#  gif_attribution              :integer
#  has_streaming_sidecar        :integer
#  height                       :integer
#  is_animated_sticker          :integer
#  media_duration               :integer
#  media_job_uuid               :text
#  media_key                    :binary
#  media_key_timestamp          :integer
#  media_name                   :text
#  message_url                  :text
#  mime_type                    :text
#  original_file_hash           :text
#  page_count                   :integer
#  partial_media_enc_hash       :text
#  partial_media_hash           :text
#  suspicious_content           :integer
#  thumbnail_height_width_ratio :REAL
#  transcoded                   :integer
#  transferred                  :integer
#  trim_from                    :integer
#  trim_to                      :integer
#  width                        :integer
#  chat_row_id                  :integer
#  message_row_id               :integer          primary key
#  multicast_id                 :text
#
# Indexes
#
#  message_media_chat_index                (chat_row_id)
#  message_media_hash_index                (file_hash)
#  message_media_original_file_hash_index  (original_file_hash)
#
class MessageMedium < ApplicationRecord
end
