module Whatsapp
  class API < Grape::API
    version 'v1', using: :header, vendor: 'whatsapp'
    format :json
    prefix :api

    resource :chats do
      desc 'Return a list of all chats available.'
      get do
        Chat.all
      end
    end
  end
end
