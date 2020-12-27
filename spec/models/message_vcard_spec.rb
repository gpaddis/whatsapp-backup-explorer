# == Schema Information
#
# Table name: message_vcard
#
#  vcard          :text
#  _id            :integer          primary key
#  message_row_id :integer
#
# Indexes
#
#  message_vcard_index  (message_row_id,vcard) UNIQUE
#
require 'rails_helper'

RSpec.describe MessageVcard, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
