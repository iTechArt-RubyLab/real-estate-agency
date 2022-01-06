require 'rails_helper'

RSpec.describe RealtorProfilesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/realtor_profiles').to route_to('realtor_profiles#index')
    end

    it 'routes to #new' do
      expect(get: '/realtor_profiles/new').to route_to('realtor_profiles#new')
    end

    it 'routes to #show' do
      expect(get: '/realtor_profiles/1').to route_to('realtor_profiles#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/realtor_profiles/1/edit').to route_to('realtor_profiles#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/realtor_profiles').to route_to('realtor_profiles#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/realtor_profiles/1').to route_to('realtor_profiles#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/realtor_profiles/1').to route_to('realtor_profiles#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/realtor_profiles/1').to route_to('realtor_profiles#destroy', id: '1')
    end
  end
end
