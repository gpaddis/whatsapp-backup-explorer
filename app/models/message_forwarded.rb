# == Schema Information
#
# Table name: message_forwarded
#
#  forward_score  :integer
#  message_row_id :integer          primary key
#
class MessageForwarded < ApplicationRecord
  self.table_name = 'message_forwarded'
end
