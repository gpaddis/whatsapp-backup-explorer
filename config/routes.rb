Rails.application.routes.draw do
  mount Whatsapp::API => '/'

  resources :chats, only: :index
end
