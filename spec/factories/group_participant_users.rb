# == Schema Information
#
# Table name: group_participant_user
#
#  pending          :integer
#  rank             :integer
#  _id              :integer          primary key
#  group_jid_row_id :integer          not null
#  user_jid_row_id  :integer          not null
#
# Indexes
#
#  group_participant_user_index  (group_jid_row_id,user_jid_row_id) UNIQUE
#
FactoryBot.define do
  factory :group_participant_user do
    
  end
end
