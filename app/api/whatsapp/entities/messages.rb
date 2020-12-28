module Whatsapp
  module Entities
    class Messages < Grape::Entity
      expose :_id
      expose :data
      expose :key_from_me
      expose :timestamp
      expose :author, using: Whatsapp::Entities::Jid
    end
  end
end
