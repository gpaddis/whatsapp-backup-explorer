# == Schema Information
#
# Table name: call_log
#
#  bytes_transferred              :integer
#  call_result                    :integer
#  duration                       :integer
#  from_me                        :integer
#  is_joinable_group_call         :integer
#  timestamp                      :integer
#  video_call                     :integer
#  _id                            :integer          primary key
#  call_creator_device_jid_row_id :integer          default(0), not null
#  call_id                        :text
#  group_jid_row_id               :integer          default(0), not null
#  jid_row_id                     :integer
#  transaction_id                 :integer
#
# Indexes
#
#  call_log_key_index  (jid_row_id,from_me,call_id,transaction_id) UNIQUE
#
FactoryBot.define do
  factory :call_log do
    
  end
end
