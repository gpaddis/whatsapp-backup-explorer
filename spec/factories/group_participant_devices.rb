# == Schema Information
#
# Table name: group_participant_device
#
#  sent_sender_key          :integer
#  _id                      :integer          primary key
#  device_jid_row_id        :integer          not null
#  group_participant_row_id :integer          not null
#
# Indexes
#
#  group_participant_device_index  (group_participant_row_id,device_jid_row_id) UNIQUE
#
FactoryBot.define do
  factory :group_participant_device do
    
  end
end
