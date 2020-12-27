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
    admin { 0 }
    gjid { build(:jid).raw_string }
    jid { build(:jid).raw_string }
    pending { 0 }
    sent_sender_key { 0 }
  end
end
