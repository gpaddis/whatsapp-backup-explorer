# == Schema Information
#
# Table name: message_location
#
#  latitude                      :REAL
#  live_location_final_latitude  :REAL
#  live_location_final_longitude :REAL
#  live_location_final_timestamp :integer
#  live_location_sequence_number :integer
#  live_location_share_duration  :integer
#  longitude                     :REAL
#  map_download_status           :integer
#  place_address                 :text
#  place_name                    :text
#  url                           :text
#  chat_row_id                   :integer
#  message_row_id                :integer          primary key
#
require 'rails_helper'

RSpec.describe MessageLocation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
