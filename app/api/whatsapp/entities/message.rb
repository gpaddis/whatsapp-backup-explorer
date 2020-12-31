module Whatsapp
  module Entities
    class Message < Grape::Entity
      expose :_id
      expose :data
      expose :key_from_me
      expose :status
      expose :timestamp
      expose :media_url
      expose :media_mime_type
      expose :media_name
      expose :media_duration
      expose :media_caption
      expose :message_thumbnail_base64 do |m|
        if m.media_mime_type&.include?('image')
          if m.message_thumbnail&.thumbnail
            # New messages have a separate database entity containing the message thumbnail.
            Base64.encode64(m.message_thumbnail&.thumbnail)
          elsif m.thumb_image
            # Compatibility mode: old message had their thumbnail saved in the field raw_data.
            Base64.encode64 m.raw_data if m.raw_data.present?
          end
        end
      end
      expose :author, using: Whatsapp::Entities::Jid
    end
  end
end
