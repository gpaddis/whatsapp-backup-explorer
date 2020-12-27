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
require 'rails_helper'

RSpec.describe MessageLink, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
