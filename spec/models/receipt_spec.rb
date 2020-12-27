# == Schema Information
#
# Table name: receipts
#
#  key_remote_jid           :text             not null
#  played_device_timestamp  :integer
#  read_device_timestamp    :integer
#  receipt_device_timestamp :integer
#  remote_resource          :text
#  _id                      :integer          primary key
#  key_id                   :text             not null
#
# Indexes
#
#  receipts_key_index  (key_remote_jid,key_id)
#
require 'rails_helper'

RSpec.describe Receipt, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
