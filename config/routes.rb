# == Route Map
#
require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root to: 'home#index'
  get 'flats_catalog', to: 'flats_catalog#index'
  get 'country_side_houses_catalog', to: 'country_side_houses_catalog#index'
  get 'commercial_premises_catalog', to: 'commercial_premises_catalog#index'
  get 'admin_panel', to: 'admin_panel#index'
  scope '/reports' do
    get 'users-count', to: 'reports#users_count'
    post 'users_count_report', to: 'reports#users_count_report'
    get 'clients-count', to: 'reports#clients_count'
    post 'clients_count_report', to: 'reports#clients_count_report'
    get 'realtors-count', to: 'reports#realtors_count'
    post 'realtors_count_report', to: 'reports#realtors_count_report'
    get 'locked-users-count', to: 'reports#locked_users_count'
    post 'locked_users_count_report', to: 'reports#locked_users_count_report'
    get 'lots-count', to: 'reports#lots_count'
    post 'lots_count_report', to: 'reports#lots_count_report'
    get 'commercial-premises-count', to: 'reports#commercial_premises_count'
    post 'commercial_premises_count_report', to: 'reports#commercial_premises_count_report'
    get 'country-side-houses-count', to: 'reports#country_side_houses_count'
    post 'country_side_houses_count_report', to: 'reports#country_side_houses_count_report'
    get 'flats-count', to: 'reports#flats_count'
    post 'flats_count_report', to: 'reports#flats_count_report'
    get 'not-started-lots-count', to: 'reports#not_started_lots_count'
    post 'not_started_lots_count_report', to: 'reports#not_started_lots_count_report'
    get 'published-lots-count', to: 'reports#published_lots_count'
    post 'published_lots_count_report', to: 'reports#published_lots_count_report'
    get 'completed-lots-count', to: 'reports#completed_lots_count'
    post 'completed_lots_count_report', to: 'reports#completed_lots_count_report'
  end
  resources :ordering
  resources :deal_types
  resources :countries
  resources :property_types
  resources :ready_states
  resources :country_side_house_kinds
  resources :commercial_premises_kinds
  resources :renovations
  resources :wall_materials
  resources :lots
  resources :country_side_houses do
    collection do
      put 'remove_from_work', to: 'country_side_houses#remove_from_work'
      put 'publish', to: 'country_side_houses#publish'
      put 'complete', to: 'country_side_houses#complete'
      put 'return_to_publish', to: 'country_side_houses#return_to_publish'
    end
  end
  resources :commercial_premises do
    collection do
      put 'remove_from_work', to: 'commercial_premises#remove_from_work'
      put 'publish', to: 'commercial_premises#publish'
      put 'complete', to: 'commercial_premises#complete'
      put 'return_to_publish', to: 'commercial_premises#return_to_publish'
    end
  end
  resources :flats do
    collection do
      put 'remove_from_work', to: 'flats#remove_from_work'
      put 'publish', to: 'flats#publish'
      put 'complete', to: 'flats#complete'
      put 'return_to_publish', to: 'flats#return_to_publish'
    end
  end
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
  put 'lock_user', to: 'user#lock_user'
  put 'unlock_user', to: 'user#unlock_user'
  devise_for :users, controllers: { 
    omniauth_callbacks: 'omniauth',
    sessions: 'users/sessions',
    registrations: 'users/registrations' }
end
