# == Schema Information
#
# Table name: chat_list
#
#  archived                                :integer
#  creation                                :integer
#  deleted_message_categories              :text
#  ephemeral_expiration                    :integer
#  ephemeral_setting_timestamp             :integer
#  gen                                     :REAL
#  key_remote_jid                          :text
#  mod_tag                                 :integer
#  my_messages                             :integer
#  plaintext_disabled                      :boolean
#  show_group_description                  :integer
#  sort_timestamp                          :integer
#  subject                                 :text
#  unseen_earliest_message_received_time   :integer
#  unseen_message_count                    :integer
#  unseen_missed_calls_count               :integer
#  unseen_row_count                        :integer
#  vcard_ui_dismissed                      :integer
#  _id                                     :integer          primary key
#  change_number_notified_message_id       :integer
#  deleted_message_id                      :integer
#  deleted_starred_message_id              :integer
#  last_important_message_table_id         :integer
#  last_message_table_id                   :integer
#  last_read_ephemeral_message_table_id    :integer
#  last_read_message_table_id              :integer
#  last_read_receipt_sent_message_table_id :integer
#  message_table_id                        :integer
#
FactoryBot.define do
  factory :chat_list do
    
  end
end
