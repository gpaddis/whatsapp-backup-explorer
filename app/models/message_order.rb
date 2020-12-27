# == Schema Information
#
# Table name: message_order
#
#  item_count     :integer
#  message        :text
#  order_title    :text
#  seller_jid     :integer
#  status         :integer
#  surface        :integer
#  thumbnail      :binary
#  token          :text
#  message_row_id :integer          primary key
#  order_id       :text
#
class MessageOrder < ApplicationRecord
  self.table_name = 'message_order'
end

