module Whatsapp
  class API < Grape::API
    version 'v1', using: :header, vendor: 'whatsapp'
    format :json
    prefix :api

    resource :chats do
      desc 'Return a list of all chats available.'
      get do
        chats = Chat.all
        present chats, with: Whatsapp::Entities::Chats
      end

      route_param :id do
        desc 'Fetch detailed information about a chat.'
        get do
          present Chat.find(params[:id]), with: Whatsapp::Entities::Chat
        end

        resource :messages do
          desc 'Get all messages in a chat.'
          get do
            present Chat.find(params[:id]).messages, with: Whatsapp::Entities::Message
          end
        end
      end
    end
  end
end
