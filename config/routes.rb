Rails.application.routes.draw do

  # home
  root to: "users#index"

  # user
  resources :users
  
end
