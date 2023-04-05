Rails.application.routes.draw do
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
  root "products#index"
end
