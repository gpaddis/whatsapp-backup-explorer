module Whatsapp
  module Entities
    class Chat < Chats
      expose :hidden
      expose :archived
      expose :created_timestamp
      expose :users, using: Whatsapp::Entities::Jid
      expose :messages_count do |chat|
        chat.messages.size
      end
    end
  end
end
