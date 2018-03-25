Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  devise_for :users
  resources :currencies, only: %i(index show)

  # Sidekiq dashboard
  require 'sidekiq/web'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web => '/sidekiq'
end
