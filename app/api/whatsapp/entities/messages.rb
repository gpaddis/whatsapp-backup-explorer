module Whatsapp
  module Entities
    class Messages < Grape::Entity
      expose :_id
      expose :data
      expose :key_from_me
      expose :timestamp
    end
  end
end
