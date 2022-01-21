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

RSpec.describe '/realtor_profiles', type: :request do
  # RealtorProfile. As you add validations to RealtorProfile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      RealtorProfile.create! valid_attributes
      get realtor_profiles_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      realtor_profile = RealtorProfile.create! valid_attributes
      get realtor_profile_url(realtor_profile)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_realtor_profile_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      realtor_profile = RealtorProfile.create! valid_attributes
      get edit_realtor_profile_url(realtor_profile)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new RealtorProfile' do
        expect do
          post realtor_profiles_url, params: { realtor_profile: valid_attributes }
        end.to change(RealtorProfile, :count).by(1)
      end

      it 'redirects to the created realtor_profile' do
        post realtor_profiles_url, params: { realtor_profile: valid_attributes }
        expect(response).to redirect_to(realtor_profile_url(RealtorProfile.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new RealtorProfile' do
        expect do
          post realtor_profiles_url, params: { realtor_profile: invalid_attributes }
        end.to change(RealtorProfile, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post realtor_profiles_url, params: { realtor_profile: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested realtor_profile' do
        realtor_profile = RealtorProfile.create! valid_attributes
        patch realtor_profile_url(realtor_profile), params: { realtor_profile: new_attributes }
        realtor_profile.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the realtor_profile' do
        realtor_profile = RealtorProfile.create! valid_attributes
        patch realtor_profile_url(realtor_profile), params: { realtor_profile: new_attributes }
        realtor_profile.reload
        expect(response).to redirect_to(realtor_profile_url(realtor_profile))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        realtor_profile = RealtorProfile.create! valid_attributes
        patch realtor_profile_url(realtor_profile), params: { realtor_profile: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested realtor_profile' do
      realtor_profile = RealtorProfile.create! valid_attributes
      expect do
        delete realtor_profile_url(realtor_profile)
      end.to change(RealtorProfile, :count).by(-1)
    end

    it 'redirects to the realtor_profiles list' do
      realtor_profile = RealtorProfile.create! valid_attributes
      delete realtor_profile_url(realtor_profile)
      expect(response).to redirect_to(realtor_profiles_url)
    end
  end
end