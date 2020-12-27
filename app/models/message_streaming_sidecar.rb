# == Schema Information
#
# Table name: message_streaming_sidecar
#
#  chunk_lengths  :binary
#  sidecar        :binary
#  timestamp      :integer
#  message_row_id :integer          primary key
#
class MessageStreamingSidecar < ApplicationRecord
  self.table_name = 'message_streaming_sidecar'
end
