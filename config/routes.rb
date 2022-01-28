# == Route Map
#

Rails.application.routes.draw do
  get 'country_side_houses_catalog', to: 'country_side_houses_catalog#index'
  get 'commercial_premises_catalog', to: 'commercial_premises_catalog#index'
  resources :lots
  resources :deal_types
  get 'admin_panel', to: 'admin_panel#index'
  scope '/reports' do
    get 'users-count', to: 'reports#users_count'
    get 'clients-count', to: 'reports#clients_count'
    get 'realtors-count', to: 'reports#realtors_count'
    get 'locked-users-count', to: 'reports#locked_users_count'
    get 'lots-count', to: 'reports#lots_count'
    get 'commercial-premises-count', to: 'reports#commercial_premises_count'
    get 'country-side-houses-count', to: 'reports#country_side_houses_count'
    get 'flats-count', to: 'reports#flats_count'
    get 'not-started-lots-count', to: 'reports#not_started_lots_count'
    get 'in-progress-lots-count', to: 'reports#in_progress_lots_count'
    get 'published-lots-count', to: 'reports#published_lots_count'
    get 'completed-lots-count', to: 'reports#completed_lots_count'
    get 'blocked-lots-count', to: 'reports#blocked_lots_count'
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
