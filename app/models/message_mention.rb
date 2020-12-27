# == Schema Information
#
# Table name: message_mentions
#
#  _id            :integer          primary key
#  jid_row_id     :integer
#  message_row_id :integer
#
# Indexes
#
#  mentions_index  (message_row_id,jid_row_id) UNIQUE
#
class MessageMention < ApplicationRecord
end
