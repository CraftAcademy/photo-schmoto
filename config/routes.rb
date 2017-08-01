Rails.application.routes.draw do
  root 'landing#index'
  #get '/photos', to: 'photos#index'
  resources :photos, only: :index 
end
