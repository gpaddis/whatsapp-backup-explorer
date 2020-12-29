module Whatsapp
  module Entities
    class Chats < Grape::Entity
      expose :_id
      expose :subject
      expose :sort_timestamp
      expose :group_owner, using: Whatsapp::Entities::Jid
    end
  end
end
