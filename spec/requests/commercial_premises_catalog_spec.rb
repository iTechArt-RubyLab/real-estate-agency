require 'rails_helper'

RSpec.describe 'CommercialPremisesCatalogs', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/commercial_premises_catalog/index'
      expect(response).to have_http_status(:success)
    end
  end
end
