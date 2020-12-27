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
require 'rails_helper'

RSpec.describe Jid, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
