require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/client_profiles', type: :request do
  # ClientProfile. As you add validations to ClientProfile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      ClientProfile.create! valid_attributes
      get client_profiles_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      client_profile = ClientProfile.create! valid_attributes
      get client_profile_url(client_profile)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_client_profile_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      client_profile = ClientProfile.create! valid_attributes
      get edit_client_profile_url(client_profile)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new ClientProfile' do
        expect do
          post client_profiles_url, params: { client_profile: valid_attributes }
        end.to change(ClientProfile, :count).by(1)
      end

      it 'redirects to the created client_profile' do
        post client_profiles_url, params: { client_profile: valid_attributes }
        expect(response).to redirect_to(client_profile_url(ClientProfile.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new ClientProfile' do
        expect do
          post client_profiles_url, params: { client_profile: invalid_attributes }
        end.to change(ClientProfile, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post client_profiles_url, params: { client_profile: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested client_profile' do
        client_profile = ClientProfile.create! valid_attributes
        patch client_profile_url(client_profile), params: { client_profile: new_attributes }
        client_profile.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the client_profile' do
        client_profile = ClientProfile.create! valid_attributes
        patch client_profile_url(client_profile), params: { client_profile: new_attributes }
        client_profile.reload
        expect(response).to redirect_to(client_profile_url(client_profile))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        client_profile = ClientProfile.create! valid_attributes
        patch client_profile_url(client_profile), params: { client_profile: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested client_profile' do
      client_profile = ClientProfile.create! valid_attributes
      expect do
        delete client_profile_url(client_profile)
      end.to change(ClientProfile, :count).by(-1)
    end

    it 'redirects to the client_profiles list' do
      client_profile = ClientProfile.create! valid_attributes
      delete client_profile_url(client_profile)
      expect(response).to redirect_to(client_profiles_url)
    end
  end
end