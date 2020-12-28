# == Schema Information
#
# Table name: messages_links
#
#  key_remote_jid :text
#  link_index     :integer
#  _id            :integer          primary key
#  message_row_id :integer
#
class MessagesLink < ApplicationRecord
  belongs_to :jid, foreign_key: 'key_remote_jid', primary_key: 'raw_string'
  belongs_to :message, foreign_key: 'message_row_id'
end
