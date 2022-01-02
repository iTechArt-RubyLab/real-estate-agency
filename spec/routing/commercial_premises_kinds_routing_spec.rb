require 'rails_helper'

RSpec.describe CommercialPremisesKindsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/commercial_premises_kinds').to route_to('commercial_premises_kinds#index')
    end

    it 'routes to #new' do
      expect(get: '/commercial_premises_kinds/new').to route_to('commercial_premises_kinds#new')
    end

    it 'routes to #show' do
      expect(get: '/commercial_premises_kinds/1').to route_to('commercial_premises_kinds#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/commercial_premises_kinds/1/edit').to route_to('commercial_premises_kinds#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/commercial_premises_kinds').to route_to('commercial_premises_kinds#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/commercial_premises_kinds/1').to route_to('commercial_premises_kinds#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/commercial_premises_kinds/1').to route_to('commercial_premises_kinds#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/commercial_premises_kinds/1').to route_to('commercial_premises_kinds#destroy', id: '1')
    end
  end
end
