# == Schema Information
#
# Table name: user_device_info
#
#  timestamp       :integer          not null
#  raw_id          :integer          not null
#  user_jid_row_id :integer          primary key
#
# Indexes
#
#  user_device_info_index  (user_jid_row_id) UNIQUE
#
class UserDeviceInfo < ApplicationRecord
  self.table_name = 'user_device_info'
end
