Rails.application.routes.draw do
  root 'currencies#index'
  resources :currencies, only: %i(index show)
end
