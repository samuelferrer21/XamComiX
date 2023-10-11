Rails.application.routes.draw do
  # Routes for Comics
  root to: 'comics#index'
  get 'comics/show'
  # resources :comics, only: [:index, :show]

  # Route for About page
  get 'comics/about'
end
