require 'rails_helper'

RSpec.describe CountrySideHousesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/country_side_houses').to route_to('country_side_houses#index')
    end

    it 'routes to #new' do
      expect(get: '/country_side_houses/new').to route_to('country_side_houses#new')
    end

    it 'routes to #show' do
      expect(get: '/country_side_houses/1').to route_to('country_side_houses#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/country_side_houses/1/edit').to route_to('country_side_houses#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/country_side_houses').to route_to('country_side_houses#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/country_side_houses/1').to route_to('country_side_houses#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/country_side_houses/1').to route_to('country_side_houses#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/country_side_houses/1').to route_to('country_side_houses#destroy', id: '1')
    end
  end
end
