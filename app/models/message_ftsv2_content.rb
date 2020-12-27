# == Schema Information
#
# Table name: message_ftsv2_content
#
#  c0content       :
#  c1fts_jid       :
#  c2fts_namespace :
#  docid           :integer          primary key
#
class MessageFtsv2Content < ApplicationRecord
  self.table_name = 'message_ftsv2_content'
end
