Rails.application.routes.draw do
  resources :property_types
  resources :cities
  resources :properties
  resources :menus
  resources :dictionaries
  resources :cms
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/admin', to: 'admin#index'
  post 'authenticate', to: 'authentication#authenticate'
end
