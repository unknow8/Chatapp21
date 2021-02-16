Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#omniauth'

  get "logout", to: "sessions#destroy"

  get "room", to: "room#newroom"
  root to: 'main#index'
end
