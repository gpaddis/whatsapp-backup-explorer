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
FactoryBot.define do
  factory :call_log_participant_v2 do
    
  end
end
