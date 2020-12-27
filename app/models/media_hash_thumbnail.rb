# == Schema Information
#
# Table name: media_hash_thumbnail
#
#  media_hash :text             primary key
#  thumbnail  :binary
#
class MediaHashThumbnail < ApplicationRecord
  self.table_name = 'media_hash_thumbnail'
end
