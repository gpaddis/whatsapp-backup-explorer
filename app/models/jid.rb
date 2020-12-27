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

# The jid table is a polymorphic collection of records connecting all objects in the whatsapp database.
# A jid row might represent a user, a group, etc.
class Jid < ApplicationRecord
  self.table_name = 'jid'

  # Avoid collisions with single-table inheritance mechanism.
  self.inheritance_column = nil

  # TODO double check the type codes.
  enum type: {
    jid_user: 0,
    jid_group: 1,
    jid_temp: 2,
    jid_broadcast: 3,
    jid_myself: 11,
    jid_unknown: 17
  }

  has_many :messages, foreign_key: 'key_remote_jid', primary_key: 'raw_string'
end
