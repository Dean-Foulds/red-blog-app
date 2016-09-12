Rails.application.routes.draw do
  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  resources :posts, only: [:show, :index, :new, :create] do
    resources :comments, only: [:show, :edit, :update, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
