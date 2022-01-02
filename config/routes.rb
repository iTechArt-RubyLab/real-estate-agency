# == Route Map
#

Rails.application.routes.draw do
  resources :cities do
    resources :streets
  end
  resources :addresses
  resources :streets
  resources :districts
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  root to: 'home#index'
end
