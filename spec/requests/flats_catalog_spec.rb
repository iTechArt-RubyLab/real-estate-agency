require 'rails_helper'

RSpec.describe 'FlatsCatalogs', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/flats_catalog/index'
      expect(response).to have_http_status(:success)
    end
  end
end
