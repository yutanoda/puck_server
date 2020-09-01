Rails.application.routes.draw do
  root to: 'user_sessions#index'
  resources :user_sessions, only: [:index, :create, :destroy]
  resources :users
  
end
