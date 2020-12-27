# == Schema Information
#
# Table name: call_log_participant_v2
#
#  call_result     :integer
#  _id             :integer          primary key
#  call_log_row_id :integer
#  jid_row_id      :integer
#
# Indexes
#
#  call_log_participant_key_index  (call_log_row_id,jid_row_id) UNIQUE
#
require 'rails_helper'

RSpec.describe CallLogParticipantV2, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
