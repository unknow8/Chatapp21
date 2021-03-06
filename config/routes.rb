Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'
 end

 
  resources :rooms do
    resource :room_user
    resources :messages
  end

  root to: "landing_page#index"
end
