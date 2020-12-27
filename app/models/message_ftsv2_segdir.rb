# == Schema Information
#
# Table name: message_ftsv2_segdir
#
#  end_block        :integer
#  idx              :integer
#  leaves_end_block :integer
#  level            :integer
#  root             :binary
#  start_block      :integer
#
class MessageFtsv2Segdir < ApplicationRecord
  self.table_name = 'message_ftsv2_segdir'
end
