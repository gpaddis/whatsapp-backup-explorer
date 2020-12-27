# == Schema Information
#
# Table name: jid
#
#  agent      :integer
#  device     :integer
#  raw_string :text
#  server     :text             not null
#  type       :integer
#  user       :text             not null
#  _id        :integer          primary key
#
# Indexes
#
#  jid_key_new_index     (user,server,agent,device,type) UNIQUE
#  jid_raw_string_index  (raw_string) UNIQUE
#

# A Jid is the unique identifier of a chat between two or more persons.
class Jid < ApplicationRecord
  self.table_name = 'jid'

  # Avoid collisions with single-table inheritance mechanism.
  self.inheritance_column = nil

  has_many :messages, foreign_key: 'key_remote_jid', primary_key: 'raw_string'
end
