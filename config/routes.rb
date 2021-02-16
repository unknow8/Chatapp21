Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#omniauth'

  # get 'sessions/login'
  # get 'sessions/logout'
  # post 'sessions' => 'sessions#create'

  # get '/auth/:provider/callback' => 'sessions#create_session'
  # post '/auth/:provider/callback' => 'sessions#create_session'

  # get 'registration' => 'users#new', as: 'registration'


  root to: 'main#index'
end
