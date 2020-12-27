# == Schema Information
#
# Table name: messages_hydrated_four_row_template
#
#  message_row_id      :integer          primary key
#  message_template_id :text
#
class MessagesHydratedFourRowTemplate < ApplicationRecord
  self.table_name = 'messages_hydrated_four_row_template'
end
