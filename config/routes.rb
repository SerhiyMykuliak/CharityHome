Rails.application.routes.draw do
  resources :photo_galleries, only: [:index, :edit ,:update, :new, :create, :destroy]
  resources :posts
  resource :session, only: [:new, :create, :destroy]
  resources :volunteers
  resources :causes

  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'about', to: 'pages#about'

  root "pages#home"
end
