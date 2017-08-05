Rails.application.routes.draw do
  root 'landing#index'
  resources :photos, only: :index
  get '/search', to: 'photos#search'
  resources :cart, only: [:create, :index]
end
