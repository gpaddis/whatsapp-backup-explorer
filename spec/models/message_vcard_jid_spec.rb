# == Schema Information
#
# Table name: message_vcard_jid
#
#  _id              :integer          primary key
#  message_row_id   :integer
#  vcard_jid_row_id :integer
#  vcard_row_id     :integer
#
# Indexes
#
#  message_vcard_jid_index  (vcard_jid_row_id,vcard_row_id,message_row_id) UNIQUE
#
require 'rails_helper'

RSpec.describe MessageVcardJid, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
