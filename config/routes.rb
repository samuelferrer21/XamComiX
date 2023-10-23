Rails.application.routes.draw do
  # Routes for Comics / Homepage
  root to: "comics#index"

  # Route for About page & Search feature
  get "comics/about"
  get "search", to: "comics#index"

  # Routes for all data set action/views
  resources :comics, only: %i[index show]
  resources :writers, only: %i[index show]
  resources :publishers, only: %i[index show]
  resources :editions, only: %i[index show]
end
