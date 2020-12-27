# == Schema Information
#
# Table name: missed_call_logs
#
#  is_joinable_group_call :integer
#  timestamp              :integer
#  video_call             :integer
#  _id                    :integer          primary key
#  group_jid_row_id       :integer          default(0), not null
#  message_row_id         :integer
#
# Indexes
#
#  missed_call_logs_key_index  (message_row_id) UNIQUE
#
FactoryBot.define do
  factory :missed_call_log do
    
  end
end
