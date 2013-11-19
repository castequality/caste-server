CasteServer::Application.routes.draw do
  resources :posts

  root to: 'featured#show'
end
