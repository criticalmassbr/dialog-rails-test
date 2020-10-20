Rails.application.routes.draw do

  # home
  root 'static#home'

  # user
  resources :users
  
end
