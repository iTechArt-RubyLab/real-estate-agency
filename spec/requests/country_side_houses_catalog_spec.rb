require 'rails_helper'

RSpec.describe 'CountrySideHousesCatalogs', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/country_side_houses_catalog/index'
      expect(response).to have_http_status(:success)
    end
  end
end
