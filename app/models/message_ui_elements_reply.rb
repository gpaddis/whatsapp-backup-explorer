# == Schema Information
#
# Table name: message_ui_elements_reply
#
#  element_type   :integer
#  reply_values   :text
#  message_row_id :integer          primary key
#
class MessageUiElementsReply < ApplicationRecord
  self.table_name = 'message_ui_elements_reply'
end
