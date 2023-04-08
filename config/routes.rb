Rails.application.routes.draw do
  get 'pages/login'
  get 'pages/home'
  resources :bills
  resources :shipping_manages
  resources :shippings
  resources :storage_manages
  resources :staffs
  resources :storages
  resources :farms
  resources :authorized_shops
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get '/configure', to: 'pages#change', as: 'set_connection'
  get '/logout', to: 'pages#logout', as: 'logout'
end
