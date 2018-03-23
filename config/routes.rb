Rails.application.routes.draw do
  root 'currencies#index'
  get 'currencies/details'
  resources :currencies, only: %i(index show)
end
