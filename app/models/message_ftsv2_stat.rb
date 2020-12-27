# == Schema Information
#
# Table name: message_ftsv2_stat
#
#  id    :integer          primary key
#  value :binary
#
class MessageFtsv2Stat < ApplicationRecord
  self.table_name = 'message_ftsv2_stat'
end
