# == Route Map
#

Rails.application.routes.draw do
  get 'admin_panel', to: 'admin_panel#index'
  resources :client_profiles
  resources :user_infos
  resources :countries
  resources :client_profiles
  resources :tags
  resources :changes_histories
  resources :property_types
  resources :realtor_profiles
  resources :country_side_houses
  resources :ready_states
  resources :country_side_house_kinds
  resources :commercial_premises
  resources :commercial_premises_kinds
  resources :flats
  resources :renovations
  resources :wall_materials
  resources :cities do
    resources :streets
    resources :districts do
      resources :streets
    end
  end
  resources :addresses
  resources :streets
  resources :districts
  resources :users do
    resources :roles
  end
  devise_for :users, controllers: { 
    omniauth_callbacks: 'omniauth',
    sessions: 'users/sessions',
    registrations: 'users/registrations' }
  root to: 'home#index'
end
