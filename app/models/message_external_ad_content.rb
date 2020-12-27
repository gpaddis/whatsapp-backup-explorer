# == Schema Information
#
# Table name: message_external_ad_content
#
#  body            :text
#  full_thumbnail  :binary
#  media_type      :integer
#  media_url       :text
#  micro_thumbnail :binary
#  source_type     :text
#  source_url      :text
#  thumbnail_url   :text
#  title           :text
#  message_row_id  :integer          primary key
#  source_id       :text
#
class MessageExternalAdContent < ApplicationRecord
  self.table_name = 'message_external_ad_content'
end
