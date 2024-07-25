Rails.application.routes.draw do
  resources :photo_galleries, only: [:index, :edit ,:update, :new, :create, :destroy]
  resources :posts
  resource :session, only: [:new, :create, :destroy]
  resources :volunteers
  resources :causes
  resources :contacts, only: [:create]

  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  root "pages#home"
end
