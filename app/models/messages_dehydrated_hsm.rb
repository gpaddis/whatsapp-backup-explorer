# == Schema Information
#
# Table name: messages_dehydrated_hsm
#
#  message_elementname :text
#  message_lg          :text
#  message_namespace   :text
#  _id                 :integer          primary key
#  message_row_id      :integer
#
class MessagesDehydratedHsm < ApplicationRecord
  self.table_name = 'messages_dehydrated_hsm'
end
