require 'rails_helper'

RSpec.describe PropertyTypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/property_types').to route_to('property_types#index')
    end

    it 'routes to #new' do
      expect(get: '/property_types/new').to route_to('property_types#new')
    end

    it 'routes to #show' do
      expect(get: '/property_types/1').to route_to('property_types#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/property_types/1/edit').to route_to('property_types#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/property_types').to route_to('property_types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/property_types/1').to route_to('property_types#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/property_types/1').to route_to('property_types#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/property_types/1').to route_to('property_types#destroy', id: '1')
    end
  end
end
