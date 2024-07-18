Rails.application.routes.draw do
  resources :photo_galleries, only: [:index, :edit ,:update, :new, :create, :destroy]
  resource :session, only: [:new, :create, :destroy]
  resources :volunteers
  resources :causes

  root "home#index"
end
