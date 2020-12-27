# == Schema Information
#
# Table name: labels
#
#  label_name    :text
#  _id           :integer          primary key
#  color_id      :integer
#  predefined_id :integer
#
# Indexes
#
#  labels_index  (label_name) UNIQUE
#
require 'rails_helper'

RSpec.describe Label, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
