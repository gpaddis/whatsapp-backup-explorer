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
FactoryBot.define do
  factory :message_media_interactive_annotation_vertex do
    
  end
end
