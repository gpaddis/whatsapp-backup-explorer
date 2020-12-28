module Whatsapp
  module Entities
    class Chats < Grape::Entity
      expose :_id
      expose :subject
    end
  end
end
