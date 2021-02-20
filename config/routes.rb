Rails.application.routes.draw do
  resources :messages
  resources :rooms
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#create'

  get "logout", to: "sessions#destroy"

  get "room", to: "rooms#index"
  root to: 'main#index'
end
