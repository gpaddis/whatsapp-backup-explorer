# == Schema Information
#
# Table name: message_orphaned_edit
#
#  from_me           :integer          not null
#  message_type      :integer          not null
#  retry_count       :integer
#  timestamp         :integer
#  _id               :integer          primary key
#  chat_row_id       :integer          not null
#  key_id            :text             not null
#  revoked_key_id    :text
#  sender_jid_row_id :integer          default(0), not null
#
# Indexes
#
#  message_orphaned_edit_key_index  (key_id,from_me,chat_row_id,sender_jid_row_id) UNIQUE
#
require 'rails_helper'

RSpec.describe MessageOrphanedEdit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
