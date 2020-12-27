# == Schema Information
#
# Table name: messages_vcards
#
#  chat_jid       :text
#  sender_jid     :text
#  vcard          :text
#  _id            :integer          primary key
#  message_row_id :integer
#
require 'rails_helper'

RSpec.describe MessagesVcard, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
