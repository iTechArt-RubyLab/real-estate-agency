require 'rails_helper'

RSpec.describe CommercialPremisesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/commercial_premises').to route_to('commercial_premises#index')
    end

    it 'routes to #new' do
      expect(get: '/commercial_premises/new').to route_to('commercial_premises#new')
    end

    it 'routes to #show' do
      expect(get: '/commercial_premises/1').to route_to('commercial_premises#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/commercial_premises/1/edit').to route_to('commercial_premises#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/commercial_premises').to route_to('commercial_premises#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/commercial_premises/1').to route_to('commercial_premises#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/commercial_premises/1').to route_to('commercial_premises#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/commercial_premises/1').to route_to('commercial_premises#destroy', id: '1')
    end
  end
end
