Rails.application.routes.draw do
  resources :friends
  devise_for :users
  resources :posts
  
  root to: 'posts#index'
  resources :posts do 
    member do
      put "like", to: 'posts#like'
      put "dislike",to: 'posts#dislike'
    end
  end
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [:index, :show]
      post 'authenticate', to: 'authentication#authenticate'
    end
  end

  get '/profile', to: 'profile#index'
  get '/friends', to: 'friends#index'
  get '/profile/:id', to: 'profile#other'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Commontator::Engine => '/commontator'
end
