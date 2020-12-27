# == Schema Information
#
# Table name: jid
#
#  agent      :integer
#  device     :integer
#  raw_string :text
#  server     :text             not null
#  type       :integer
#  user       :text             not null
#  _id        :integer          primary key
#
# Indexes
#
#  jid_key_new_index     (user,server,agent,device,type) UNIQUE
#  jid_raw_string_index  (raw_string) UNIQUE
#
FactoryBot.define do
  factory :jid do
    user { Faker::PhoneNumber.cell_phone_in_e164.gsub('+', '') }
    server { 's.whatsapp.net' }
    agent { 0 }
    type { 0 }
    raw_string { "#{Faker::PhoneNumber.cell_phone_in_e164.gsub('+', '')}@s.whatsapp.net" }
    device { 0 }
  end
end
