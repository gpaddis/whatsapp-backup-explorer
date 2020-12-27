Rails.application.routes.draw do
  mount Whatsapp::API => '/'
end
