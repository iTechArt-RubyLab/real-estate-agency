# == Route Map
#

Rails.application.routes.draw do
  resources :lots
  resources :deal_types
  get 'admin_panel', to: 'admin_panel#index'
  scope '/reports' do
    get 'users-count', to: 'reports#users_count'
    get 'clients-count', to: 'reports#clients_count'
    get 'realtors-count', to: 'reports#realtors_count'
    get 'locked-users-count', to: 'reports#locked_users_count'
  end
  resources :client_profiles
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
  resources :streets
  resources :districts
  resources :roles
  resources :user
  devise_for :users, controllers: { 
    omniauth_callbacks: 'omniauth',
    sessions: 'users/sessions',
    registrations: 'users/registrations' }
  root to: 'home#index'
end
