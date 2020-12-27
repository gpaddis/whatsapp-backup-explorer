# == Schema Information
#
# Table name: messages_vcards_jids
#
#  vcard_jid      :text
#  _id            :integer          primary key
#  message_row_id :integer
#  vcard_row_id   :integer
#
class MessagesVcardsJid < ApplicationRecord
end
