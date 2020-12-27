# == Schema Information
#
# Table name: message_send_count
#
#  send_count     :integer
#  message_row_id :integer          primary key
#
class MessageSendCount < ApplicationRecord
  self.table_name = 'message_send_count'
end
