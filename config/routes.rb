Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "users#new"
  resources :users, only: [:new, :create]
  resources :projects, only: [ :index, :show]
  resources :games, only: [ :index]
  # Defines the root path route ("/")
  # root "articles#index"
end
