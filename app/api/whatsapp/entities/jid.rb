module Whatsapp
  module Entities
    class Jid < Grape::Entity
      expose :_id
      expose :user do |jid|
        jid.type == 'jid_user' ? '+' + jid.user : jid.user # Add the + before the phone number.
      end
      expose :type
    end
  end
end
