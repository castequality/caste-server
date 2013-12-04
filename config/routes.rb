CasteServer::Application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resource  :contact
  resources :posts
  resources :projects
  resources :stockists
  resources :visuals

  root to: 'features#index'
end
