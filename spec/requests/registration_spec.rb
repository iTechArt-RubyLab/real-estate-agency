require 'rails_helper'

RSpec.describe 'Registrations', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/registration/index'
      expect(response).to have_http_status(:success)
    end
  end
end
