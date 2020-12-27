# == Schema Information
#
# Table name: message_media_interactive_annotation_vertex
#
#  sort_order                                  :integer
#  x                                           :REAL
#  y                                           :REAL
#  _id                                         :integer          primary key
#  message_media_interactive_annotation_row_id :integer
#
# Indexes
#
#  message_media_interactive_annotation_vertex_index  (message_media_interactive_annotation_row_id,sort_order) UNIQUE
#
require 'rails_helper'

RSpec.describe MessageMediaInteractiveAnnotationVertex, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
