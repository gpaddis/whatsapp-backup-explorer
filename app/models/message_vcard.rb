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
class MessageVcard < ApplicationRecord
  self.table_name = 'message_vcard'
end
