# == Schema Information
#
# Table name: messages_fts_segdir
#
#  end_block        :integer
#  idx              :integer
#  leaves_end_block :integer
#  level            :integer
#  root             :binary
#  start_block      :integer
#
class MessagesFtsSegdir < ApplicationRecord
  self.table_name = 'messages_fts_segdir'
end
