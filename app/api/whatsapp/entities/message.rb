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
      expose :thumb_image_base64 do |message|
        Base64.encode64 message.thumb_image if message.thumb_image.present?
      end
      expose :raw_data_base64 do |message|
        Base64.encode64 message.raw_data if message.raw_data.present?
      end
      expose :author, using: Whatsapp::Entities::Jid
    end
  end
end
