# == Schema Information
#
# Table name: message_view_once_media
#
#  state          :integer          not null
#  message_row_id :integer          primary key
#
# Indexes
#
#  message_view_once_media_state_index  (state)
#
require 'rails_helper'

RSpec.describe MessageViewOnceMedium, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
