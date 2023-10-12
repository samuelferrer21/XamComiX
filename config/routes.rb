Rails.application.routes.draw do

  # Routes for Comics
  root to: 'comics#index'
  # resources :comics, only: [:index, :show]

  # Route for About page
  get 'comics/about'

  get "publishers/index"
  get "publishers/show"
  get "writers/index"
  get "writers/show"
  get "comics/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :comics, only: %i[index show]
  resources :writers, only: %i[index show]
  resources :publishers, only: %i[index show]

end
