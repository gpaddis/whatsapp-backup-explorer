module Whatsapp
  module Entities
    class Chat < Chats
      expose :hidden
      expose :archived
      expose :created_timestamp
      expose :users, using: Whatsapp::Entities::Jid
    end
  end
end
