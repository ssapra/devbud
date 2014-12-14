Rails.application.routes.draw do
  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'

  root to: 'home#index'
  post '/sessions' => 'sessions#create'
  post '/students' => 'students#create'
  get '/verification_sent' => 'students#verification_sent'
  resources :sessions
  resources :password_resets
  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout
  resources :students do
    member do
      get :activate
    end
  end

  get '/auth/github/callback' => 'students#callback'
end
