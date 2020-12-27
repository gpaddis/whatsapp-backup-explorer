# == Schema Information
#
# Table name: missed_call_log_participant
#
#  call_result      :integer
#  jid              :text
#  _id              :integer          primary key
#  call_logs_row_id :integer
#
# Indexes
#
#  missed_call_log_participants_key_index  (call_logs_row_id,jid) UNIQUE
#
require 'rails_helper'

RSpec.describe MissedCallLogParticipant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
