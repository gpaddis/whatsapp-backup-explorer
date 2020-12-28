module Whatsapp
  module Entities
    class Jid < Grape::Entity
      expose :_id
      expose :user
      expose :type
    end
  end
end
