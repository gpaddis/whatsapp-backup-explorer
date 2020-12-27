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
require 'rails_helper'

RSpec.describe MessageOrder, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
