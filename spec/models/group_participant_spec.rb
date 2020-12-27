# == Schema Information
#
# Table name: group_participants
#
#  admin           :integer
#  gjid            :text             not null
#  jid             :text             not null
#  pending         :integer
#  sent_sender_key :integer
#  _id             :integer          primary key
#
# Indexes
#
#  group_participants_index  (gjid,jid) UNIQUE
#
require 'rails_helper'

RSpec.describe GroupParticipant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
