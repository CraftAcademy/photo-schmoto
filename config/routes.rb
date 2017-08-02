Rails.application.routes.draw do
  root 'landing#index'
  resources :photos, only: :index 
end
