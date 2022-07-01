Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('/users/1')

  resource :users
  resource :user

  # Main
  resources :users do
    get '/:page', action: :index, on: :collection 
  end

  # CRUD users
  match "user/create" => "users#create", as: :create_user, via: [:post]
  match "user/:id" => "users#show", as: :show_user, via: [:get]
  match "user/edit/:id" => "users#update", as: :update_user, via: [:patch, :put]
  match "user/:id" => "users#destroy", as: :delete_user, via: [:delete]

  # Helpers
  match "get_cidades/:index" => "users#get_cidade", as: :get_cidade, via: [:get]
end
