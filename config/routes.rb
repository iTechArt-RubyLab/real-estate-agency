# == Route Map
#

Rails.application.routes.draw do
  resources :streets
  resources :districts
  resources :cities
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  root to: 'home#index'
end
