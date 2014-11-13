CasteServer::Application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope :api, constraints: { format: :json } do
    resources :posts, only: [:index]
    resources :projects
    resources :lookbooks, only: [:index]
    resources :videos, only: [:index]
    resources :visuals, only: [:index]
  end

  get "*ember", to: "redis#index", constraints: ->(req){ req.format != :json }
  root to: "redis#index"
end
