# == Schema Information
#
# Table name: frequents
#
#  jid           :text             not null
#  message_count :integer          not null
#  type          :integer          not null
#  _id           :integer          primary key
#
class Frequent < ApplicationRecord
end
