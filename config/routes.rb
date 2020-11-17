Rails.application.routes.draw do
  root to: 'user_sessions#index'
  resources :user_sessions, only: [:index, :create, :destroy]
  resources :users

  post '/login', to: 'authentications#login'    
        
  namespace :admin do
    resources :user_sessions, only: [:index, :create, :destroy]
    resources :users
  end
end
