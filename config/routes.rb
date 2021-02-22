Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "facebook_logout", to: "omniauth_callbacks#destroy"
  get '/auth/:provider/callback', to: 'sessions#create'

  get "logout", to: "sessions#destroy"

  get "new_room", to: "room#newroom"
  root to: 'main#index'

  
end

