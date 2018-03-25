Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  devise_for :users
  resources :currencies, only: %i(index show)
end
