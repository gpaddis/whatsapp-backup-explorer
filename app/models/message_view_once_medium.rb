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
class MessageViewOnceMedium < ApplicationRecord
end
