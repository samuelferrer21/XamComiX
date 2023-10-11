Rails.application.routes.draw do
  get "publishers/index"
  get "publishers/show"
  get "writers/index"
  get "writers/show"
  get "comics/index"
  get "comics/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :comics, only: %i[index show]
  resources :writers, only: %i[index show]
  resources :publishers, only: %i[index show]
end
