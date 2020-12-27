# == Schema Information
#
# Table name: message_group_invite
#
#  expiration       :integer
#  expired          :integer
#  group_name       :text
#  invite_code      :text
#  invite_time      :integer
#  admin_jid_row_id :integer          not null
#  group_jid_row_id :integer          not null
#  message_row_id   :integer          primary key
#
class MessageGroupInvite < ApplicationRecord
  self.table_name = 'message_group_invite'
end
