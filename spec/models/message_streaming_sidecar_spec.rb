# == Schema Information
#
# Table name: message_streaming_sidecar
#
#  chunk_lengths  :binary
#  sidecar        :binary
#  timestamp      :integer
#  message_row_id :integer          primary key
#
require 'rails_helper'

RSpec.describe MessageStreamingSidecar, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
