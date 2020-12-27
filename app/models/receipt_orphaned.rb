# == Schema Information
#
# Table name: receipt_orphaned
#
#  from_me                      :integer          not null
#  status                       :integer
#  timestamp                    :integer
#  _id                          :integer          primary key
#  chat_row_id                  :integer          not null
#  key_id                       :text             not null
#  receipt_device_jid_row_id    :integer          not null
#  receipt_recipient_jid_row_id :integer
#
# Indexes
#
#  receipt_orphaned_index  (chat_row_id,from_me,key_id,receipt_device_jid_row_id,receipt_recipient_jid_row_id,status) UNIQUE
#
class ReceiptOrphaned < ApplicationRecord
  self.table_name = 'receipt_orphaned'
end
