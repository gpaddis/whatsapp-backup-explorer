# == Schema Information
#
# Table name: message_mentions
#
#  _id            :integer          primary key
#  jid_row_id     :integer
#  message_row_id :integer
#
# Indexes
#
#  mentions_index  (message_row_id,jid_row_id) UNIQUE
#
FactoryBot.define do
  factory :message_mention do
    
  end
end
