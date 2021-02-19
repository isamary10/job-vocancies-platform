Rails.application.routes.draw do
  root 'home#index'
  resources :companies, only: %i[show new create]
end
