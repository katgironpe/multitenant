Rails.application.routes.draw do
  devise_for :users
  resources :companies
  resources :posts
  root to: 'home#index'
end
