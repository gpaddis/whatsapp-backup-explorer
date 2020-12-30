module Whatsapp
  module Entities
    class Message < Grape::Entity
      expose :_id
      expose :data
      expose :key_from_me
      expose :timestamp
      expose :media_url
      expose :media_mime_type
      expose :media_name
      expose :media_duration
      expose :media_caption
      expose :message_thumbnail_base64 do |m|
        Base64.encode64(m.message_thumbnail&.thumbnail) if m.media_mime_type&.include?('image') && m.message_thumbnail&.thumbnail
      end
      expose :thumb_image_base64 do |m|
        Base64.encode64 m.thumb_image if m.thumb_image.present?
      end
      expose :raw_data_base64 do |m|
        Base64.encode64 m.raw_data if m.raw_data.present?
      end
      expose :author, using: Whatsapp::Entities::Jid
    end
  end
end
