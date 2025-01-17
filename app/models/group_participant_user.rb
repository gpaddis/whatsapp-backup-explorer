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
class GroupParticipantUser < ApplicationRecord
  self.table_name = 'group_participant_user'

  belongs_to :user, class_name: 'Jid', foreign_key: 'user_jid_row_id'
  belongs_to :group, class_name: 'Jid', foreign_key: 'group_jid_row_id'
end
