Rails.application.routes.draw do
  root to: 'user_sessions#index'
  resources :user_sessions, only: [:index, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
