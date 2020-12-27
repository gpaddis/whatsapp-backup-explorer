# == Schema Information
#
# Table name: message_ftsv2_docsize
#
#  docid :integer          primary key
#  size  :binary
#
class MessageFtsv2Docsize < ApplicationRecord
  self.table_name = 'message_ftsv2_docsize'
end
