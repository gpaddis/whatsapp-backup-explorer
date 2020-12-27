# == Schema Information
#
# Table name: message_text
#
#  background_color :integer
#  description      :text
#  font_style       :integer
#  page_title       :text
#  preview_type     :integer
#  text_color       :integer
#  url              :text
#  message_row_id   :integer          primary key
#
class MessageText < ApplicationRecord
  self.table_name = 'message_text'
end
