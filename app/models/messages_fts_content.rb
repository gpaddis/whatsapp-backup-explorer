# == Schema Information
#
# Table name: messages_fts_content
#
#  c0content :
#  docid     :integer          primary key
#
class MessagesFtsContent < ApplicationRecord
  self.table_name = 'messages_fts_content'
end
