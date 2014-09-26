CasteServer::Application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope constraints: { format: :json } do
    resources :posts
    resources :projects
    resources :splashes
    resources :visuals
  end

  scope constraints: { format: :html } do
    get "*" => "embers#index"
  end
  root "embers#index"
end
