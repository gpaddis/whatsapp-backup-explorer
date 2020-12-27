# == Schema Information
#
# Table name: message_thumbnails
#
#  key_from_me    :integer
#  key_remote_jid :text             not null
#  thumbnail      :binary
#  timestamp      :datetime
#  key_id         :text             not null
#
# Indexes
#
#  messages_thumbnail_key_index  (key_remote_jid,key_from_me,key_id) UNIQUE
#
class MessageThumbnail < ApplicationRecord
end
