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
FactoryBot.define do
  factory :label do
    
  end
end
