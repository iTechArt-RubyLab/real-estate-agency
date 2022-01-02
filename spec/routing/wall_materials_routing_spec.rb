require 'rails_helper'

RSpec.describe WallMaterialsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/wall_materials').to route_to('wall_materials#index')
    end

    it 'routes to #new' do
      expect(get: '/wall_materials/new').to route_to('wall_materials#new')
    end

    it 'routes to #show' do
      expect(get: '/wall_materials/1').to route_to('wall_materials#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/wall_materials/1/edit').to route_to('wall_materials#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/wall_materials').to route_to('wall_materials#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/wall_materials/1').to route_to('wall_materials#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/wall_materials/1').to route_to('wall_materials#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/wall_materials/1').to route_to('wall_materials#destroy', id: '1')
    end
  end
end
