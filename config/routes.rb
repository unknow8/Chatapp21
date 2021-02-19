Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#create'

  get "logout", to: "sessions#destroy"

  get "new_room", to: "room#newroom"
  root to: 'main#index'
end
