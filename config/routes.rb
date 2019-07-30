Rails.application.routes.draw do
  resources :bars
  resources :reviews
  
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
