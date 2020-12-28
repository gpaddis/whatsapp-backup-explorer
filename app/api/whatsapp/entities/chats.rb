module Whatsapp
  module Entities
    class Chats < Grape::Entity
      expose :_id
      expose :subject
      expose :user do |chat|
        chat.jid.user
      end
    end
  end
end
