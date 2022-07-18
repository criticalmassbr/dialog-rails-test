Rails.application.routes.draw do
  root "users#index"

  resources :users do
    get '/page/:page', action: :index, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
