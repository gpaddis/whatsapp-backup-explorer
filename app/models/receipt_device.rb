# == Schema Information
#
# Table name: receipt_device
#
#  receipt_device_timestamp  :integer
#  _id                       :integer          primary key
#  message_row_id            :integer          not null
#  receipt_device_jid_row_id :integer          not null
#
# Indexes
#
#  receipt_device_index               (message_row_id,receipt_device_jid_row_id) UNIQUE
#  receipt_device_table_device_index  (receipt_device_jid_row_id)
#
class ReceiptDevice < ApplicationRecord
  self.table_name = 'receipt_device'
end
