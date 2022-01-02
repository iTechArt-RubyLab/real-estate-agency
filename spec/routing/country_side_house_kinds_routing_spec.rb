require 'rails_helper'

RSpec.describe CountrySideHouseKindsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/country_side_house_kinds').to route_to('country_side_house_kinds#index')
    end

    it 'routes to #new' do
      expect(get: '/country_side_house_kinds/new').to route_to('country_side_house_kinds#new')
    end

    it 'routes to #show' do
      expect(get: '/country_side_house_kinds/1').to route_to('country_side_house_kinds#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/country_side_house_kinds/1/edit').to route_to('country_side_house_kinds#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/country_side_house_kinds').to route_to('country_side_house_kinds#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/country_side_house_kinds/1').to route_to('country_side_house_kinds#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/country_side_house_kinds/1').to route_to('country_side_house_kinds#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/country_side_house_kinds/1').to route_to('country_side_house_kinds#destroy', id: '1')
    end
  end
end
