# == Schema Information
#
# Table name: frequents
#
#  jid           :text             not null
#  message_count :integer          not null
#  type          :integer          not null
#  _id           :integer          primary key
#
require 'rails_helper'

RSpec.describe Frequent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
