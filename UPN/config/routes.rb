Rails.application.routes.draw do
  resources :use_phone_systems

  root 'use_phone_systems#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
