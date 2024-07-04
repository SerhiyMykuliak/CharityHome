Rails.application.routes.draw do
  resources :volunteers
  root "home#index"
end
