Rails.application.routes.draw do

  root to: 'home#index'

  get '/profile/:id' => 'students#show', as: :student
  resources :clients, only: :show

  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/verification_sent' => 'users#verification_sent'

  resources :sessions
  resources :password_resets

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

  get '/users/:id/activate' => 'users#activate', as: :activate_user
  get '/auth/github/callback' => 'students#callback'
end
