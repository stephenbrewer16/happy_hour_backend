Rails.application.routes.draw do
  resources :bars
  resources :reviews
  
  post "/login", to: "auth#login"
  # post "/users", to: "users#create"
  get "/auto_login", to: "auth#auto_login"
  # get "/users", to: "users#index"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
