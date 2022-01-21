Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users

  get '/about_us', to: 'static#about_us'
  root 'static#home'
  
  get "/logout", to: "sessions#logout", as: "logout"
  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"

  resources :locations, only: [:index, :show]
    resources :lessons, only: [:show, :index, :new, :create]

end
