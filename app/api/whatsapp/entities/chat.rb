module Whatsapp
  module Entities
    class Chat < Grape::Entity
      expose :_id
      expose :subject
      expose :hidden
      expose :archived
      expose :created_timestamp
      expose :sort_timestamp
      expose :users, using: Whatsapp::Entities::Jid
      expose :group_owner, using: Whatsapp::Entities::Jid
    end
  end
end
