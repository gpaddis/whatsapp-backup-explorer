# == Schema Information
#
# Table name: message_media_vcard_count
#
#  count          :integer
#  _id            :integer          primary key
#  message_row_id :integer
#
# Indexes
#
#  message_media_vcard_count_index  (message_row_id) UNIQUE
#
FactoryBot.define do
  factory :message_media_vcard_count do
    
  end
end
