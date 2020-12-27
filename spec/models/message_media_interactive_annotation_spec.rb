# == Schema Information
#
# Table name: message_media_interactive_annotation
#
#  location_latitude  :REAL
#  location_longitude :REAL
#  location_name      :text
#  sort_order         :integer
#  _id                :integer          primary key
#  message_row_id     :integer
#
# Indexes
#
#  message_media_interactive_annotation_index  (message_row_id,sort_order) UNIQUE
#
require 'rails_helper'

RSpec.describe MessageMediaInteractiveAnnotation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
