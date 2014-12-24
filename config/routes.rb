Rails.application.routes.draw do
  get 'password_resets/create'

  get 'password_resets/edit'

  get '/profile/:id' => 'students#show', as: :student

  get 'password_resets/update'

  root to: 'home#index'
  post '/sessions' => 'sessions#create'
  post '/students' => 'students#create'
  get '/verification_sent' => 'students#verification_sent'
  resources :sessions
  resources :password_resets
  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

  get '/students/:id/activate' => 'students#activate', as: :activate_student

  get '/auth/github/callback' => 'students#callback'
end
