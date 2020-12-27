# == Schema Information
#
# Table name: status_list
#
#  key_remote_jid                          :text
#  timestamp                               :integer
#  total_count                             :integer
#  unseen_count                            :integer
#  _id                                     :integer          primary key
#  autodownload_limit_message_table_id     :integer
#  first_unread_message_table_id           :integer
#  last_read_message_table_id              :integer
#  last_read_receipt_sent_message_table_id :integer
#  message_table_id                        :integer
#
require 'rails_helper'

RSpec.describe StatusList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
