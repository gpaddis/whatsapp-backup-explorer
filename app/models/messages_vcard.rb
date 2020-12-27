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
class MessagesVcard < ApplicationRecord
end
