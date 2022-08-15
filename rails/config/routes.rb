Rails.application.routes.draw do
  root "users#index"
  resources :users

  get "users2", to: "users_second_page#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
