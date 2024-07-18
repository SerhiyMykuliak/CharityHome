Rails.application.routes.draw do
  resources :posts
  resource :session, only: [:new, :create, :destroy]
  resources :volunteers
  resources :causes

  root "home#index"
end
