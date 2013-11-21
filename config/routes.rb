CasteServer::Application.routes.draw do
  resource  :contact
  resources :posts
  resources :projects
  resources :visuals

  root to: 'features#index'
end
