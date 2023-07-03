Rails.application.routes.draw do
  resources :homes
  resources :work_details
  resources :patient_works
  resources :services
  resources :appointments
  resources :patients
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
end
