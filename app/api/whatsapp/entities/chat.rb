module Whatsapp
  module Entities
    class Chat < Grape::Entity
      expose :_id
      expose :subject
      expose :hidden
      expose :archived
      expose :created_timestamp
      expose :sort_timestamp
      expose :jid, using: Whatsapp::Entities::Jid
      expose :group_owner, using: Whatsapp::Entities::Users
    end
  end
end
