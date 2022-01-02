require 'rails_helper'

RSpec.describe ReadyStatesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/ready_states').to route_to('ready_states#index')
    end

    it 'routes to #new' do
      expect(get: '/ready_states/new').to route_to('ready_states#new')
    end

    it 'routes to #show' do
      expect(get: '/ready_states/1').to route_to('ready_states#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/ready_states/1/edit').to route_to('ready_states#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/ready_states').to route_to('ready_states#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/ready_states/1').to route_to('ready_states#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/ready_states/1').to route_to('ready_states#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/ready_states/1').to route_to('ready_states#destroy', id: '1')
    end
  end
end
