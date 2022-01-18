Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/signin' => 'session#new', as: 'signin'
  post '/session' => 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  get '/about_us', to: 'static#about_us'

  get '/logout' => 'session#destroy'

  resources :locations, only: [:index, :show]
    resources :lessons
  root 'static#home'
end
