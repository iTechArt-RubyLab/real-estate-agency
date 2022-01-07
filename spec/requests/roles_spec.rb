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

RSpec.describe '/roles', type: :request do
  # Role. As you add validations to Role, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Role.create! valid_attributes
      get roles_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      role = Role.create! valid_attributes
      get role_url(role)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_role_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      role = Role.create! valid_attributes
      get edit_role_url(role)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Role' do
        expect do
          post roles_url, params: { role: valid_attributes }
        end.to change(Role, :count).by(1)
      end

      it 'redirects to the created role' do
        post roles_url, params: { role: valid_attributes }
        expect(response).to redirect_to(role_url(Role.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Role' do
        expect do
          post roles_url, params: { role: invalid_attributes }
        end.to change(Role, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post roles_url, params: { role: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested role' do
        role = Role.create! valid_attributes
        patch role_url(role), params: { role: new_attributes }
        role.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the role' do
        role = Role.create! valid_attributes
        patch role_url(role), params: { role: new_attributes }
        role.reload
        expect(response).to redirect_to(role_url(role))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        role = Role.create! valid_attributes
        patch role_url(role), params: { role: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested role' do
      role = Role.create! valid_attributes
      expect do
        delete role_url(role)
      end.to change(Role, :count).by(-1)
    end

    it 'redirects to the roles list' do
      role = Role.create! valid_attributes
      delete role_url(role)
      expect(response).to redirect_to(roles_url)
    end
  end
end
