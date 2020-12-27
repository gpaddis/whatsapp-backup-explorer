# == Schema Information
#
# Table name: chat
#
#  archived                              :integer
#  created_timestamp                     :integer
#  ephemeral_expiration                  :integer
#  ephemeral_setting_timestamp           :integer
#  gen                                   :REAL
#  hidden                                :integer
#  mod_tag                               :integer
#  plaintext_disabled                    :integer
#  show_group_description                :integer
#  sort_timestamp                        :integer
#  spam_detection                        :integer
#  subject                               :text
#  unseen_earliest_message_received_time :integer
#  unseen_message_count                  :integer
#  unseen_missed_calls_count             :integer
#  unseen_row_count                      :integer
#  vcard_ui_dismissed                    :integer
#  _id                                   :integer          primary key
#  change_number_notified_message_row_id :integer
#  display_message_row_id                :integer
#  jid_row_id                            :integer
#  last_important_message_row_id         :integer
#  last_message_row_id                   :integer
#  last_read_ephemeral_message_row_id    :integer
#  last_read_message_row_id              :integer
#  last_read_receipt_sent_message_row_id :integer
#
class Chat < ApplicationRecord
  self.table_name = 'chat'

  belongs_to :jid, foreign_key: 'jid_row_id'
  has_many :messages, through: :jid
end
