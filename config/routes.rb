Rails.application.routes.draw do
  root to: 'user_sessions#index'
  resources :user_sessions, only: [:index, :create, :destroy]
  resources :users

  get '/login', to: 'authentications#login'
                 

  namespace :admin do
    root to: 'user_sessions#index'
    resources :user_sessions, only: [:index, :create, :destroy]
    resources :users
  end
end
