# == Schema Information
#
# Table name: group_participants
#
#  admin           :integer
#  gjid            :text             not null
#  jid             :text             not null
#  pending         :integer
#  sent_sender_key :integer
#  _id             :integer          primary key
#
# Indexes
#
#  group_participants_index  (gjid,jid) UNIQUE
#
FactoryBot.define do
  factory :group_participant do
    
  end
end
