# == Schema Information
#
# Table name: message_media_vcard_count
#
#  count          :integer
#  _id            :integer          primary key
#  message_row_id :integer
#
# Indexes
#
#  message_media_vcard_count_index  (message_row_id) UNIQUE
#
require 'rails_helper'

RSpec.describe MessageMediaVcardCount, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
