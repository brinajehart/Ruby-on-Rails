Rails.application.routes.draw do
  resources :friends
  devise_for :users
  resources :posts
  
  root to: 'posts#index'

  get '/profile', to: 'profile#index'
  get '/friends', to: 'friends#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
