CasteServer::Application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resource  :contact
  resources :posts
  resources :projects
  resources :splashes
  resources :stockists
  resources :visuals

  root to: 'splashes#index'
end
