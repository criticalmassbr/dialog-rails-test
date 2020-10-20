Rails.application.routes.draw do

  # home
  root 'static_pages#home'

  # user
  resources :users

  # static_pages
  get 'static_pages/home'
  get 'static_pages/api'
  
end
