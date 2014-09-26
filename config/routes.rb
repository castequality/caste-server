CasteServer::Application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope :api, constraints: { format: :json } do
    resources :posts
    resources :projects
    resources :splashes
    resources :visuals
  end

  get "*path" => "embers#index"
  root "embers#index"
end
