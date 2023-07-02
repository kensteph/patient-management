Rails.application.routes.draw do
  resources :services
  resources :appointments
  resources :patients
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "appointments#index"
end
