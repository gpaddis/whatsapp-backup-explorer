# == Schema Information
#
# Table name: group_participants_history
#
#  action    :integer          not null
#  gjid      :text             not null
#  jid       :text             not null
#  new_phash :text             not null
#  old_phash :text             not null
#  timestamp :datetime         not null
#  _id       :integer          primary key
#
# Indexes
#
#  group_participants_history_index  (gjid)
#
FactoryBot.define do
  factory :group_participants_history do
    
  end
end
