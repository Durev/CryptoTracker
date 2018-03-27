Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  devise_for :users
  resources :currencies, only: %i(index show)

  # Admin dashboard
  devise_for :admins
  get 'admins/dashboard'

  # Sidekiq dashboard
  require 'sidekiq/web'
  require 'sidekiq-scheduler/web'
  authenticate :admin do
    mount Sidekiq::Web => '/sidekiq'
  end
end
