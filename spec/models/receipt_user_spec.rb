# == Schema Information
#
# Table name: receipt_user
#
#  played_timestamp        :integer
#  read_timestamp          :integer
#  receipt_timestamp       :integer
#  _id                     :integer          primary key
#  message_row_id          :integer          not null
#  receipt_user_jid_row_id :integer          not null
#
# Indexes
#
#  receipt_user_index  (message_row_id,receipt_user_jid_row_id) UNIQUE
#
require 'rails_helper'

RSpec.describe ReceiptUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
