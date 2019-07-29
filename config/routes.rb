Rails.application.routes.draw do
  resources :bars
  resources :reviews
  
  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  get "/users", to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
