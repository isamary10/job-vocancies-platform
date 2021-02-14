Rails.application.routes.draw do
  root 'home#index'
  resources :companies, only: %i[index new create]
end
