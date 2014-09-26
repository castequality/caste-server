CasteServer::Application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope :api, constraints: { format: :json } do
    resources :posts, only: [:index]
    resources :projects
    resources :splashes, only: [:index]
    resources :visuals, only: [:index]
  end

  get "*path" => "embers#index"
  root "embers#index"
end
