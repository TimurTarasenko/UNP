Rails.application.routes.draw do
  get 'users/new'

  get 'sessions/new'

  resources :use_phone_systems

  root 'use_phone_systems#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/cool' => 'gif#cool'
  get '/sweet' => 'gif#sweet'
end
