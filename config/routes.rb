Rails.application.routes.draw do
  get 'donations/new'
  get 'donations/create'
  resources :photo_galleries, only: [:index, :edit ,:update, :new, :create, :destroy]
  resources :posts
  resource :session, only: [:new, :create, :destroy]
  resources :volunteers
  resources :causes
  resources :contacts, only: [:create]

  resources :causes do
    resources :donations, only: [:new, :create]
  end

  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  root "pages#home"
end
