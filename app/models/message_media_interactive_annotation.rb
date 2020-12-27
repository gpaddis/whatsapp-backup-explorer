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
class MessageMediaInteractiveAnnotation < ApplicationRecord
  self.table_name = 'message_media_interactive_annotation'
end
