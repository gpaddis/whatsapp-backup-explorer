# == Schema Information
#
# Table name: message_link
#
#  link_index     :integer
#  _id            :integer          primary key
#  chat_row_id    :integer
#  message_row_id :integer
#
# Indexes
#
#  message_link_index  (message_row_id,link_index) UNIQUE
#
class MessageLink < ApplicationRecord
  self.table_name = 'message_link'
end
