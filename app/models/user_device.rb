# == Schema Information
#
# Table name: user_device
#
#  key_index         :integer          default(0), not null
#  _id               :integer          primary key
#  device_jid_row_id :integer
#  user_jid_row_id   :integer
#
# Indexes
#
#  user_device_index  (user_jid_row_id,device_jid_row_id) UNIQUE
#
class UserDevice < ApplicationRecord
  self.table_name = 'user_device'
end
