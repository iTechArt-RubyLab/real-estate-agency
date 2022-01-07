require 'rails_helper'

RSpec.describe ClientProfilesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/client_profiles').to route_to('client_profiles#index')
    end

    it 'routes to #new' do
      expect(get: '/client_profiles/new').to route_to('client_profiles#new')
    end

    it 'routes to #show' do
      expect(get: '/client_profiles/1').to route_to('client_profiles#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/client_profiles/1/edit').to route_to('client_profiles#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/client_profiles').to route_to('client_profiles#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/client_profiles/1').to route_to('client_profiles#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/client_profiles/1').to route_to('client_profiles#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/client_profiles/1').to route_to('client_profiles#destroy', id: '1')
    end
  end
end