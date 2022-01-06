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

RSpec.describe '/wall_materials', type: :request do
  # WallMaterial. As you add validations to WallMaterial, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      WallMaterial.create! valid_attributes
      get wall_materials_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      wall_material = WallMaterial.create! valid_attributes
      get wall_material_url(wall_material)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_wall_material_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      wall_material = WallMaterial.create! valid_attributes
      get edit_wall_material_url(wall_material)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new WallMaterial' do
        expect do
          post wall_materials_url, params: { wall_material: valid_attributes }
        end.to change(WallMaterial, :count).by(1)
      end

      it 'redirects to the created wall_material' do
        post wall_materials_url, params: { wall_material: valid_attributes }
        expect(response).to redirect_to(wall_material_url(WallMaterial.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new WallMaterial' do
        expect do
          post wall_materials_url, params: { wall_material: invalid_attributes }
        end.to change(WallMaterial, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post wall_materials_url, params: { wall_material: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested wall_material' do
        wall_material = WallMaterial.create! valid_attributes
        patch wall_material_url(wall_material), params: { wall_material: new_attributes }
        wall_material.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the wall_material' do
        wall_material = WallMaterial.create! valid_attributes
        patch wall_material_url(wall_material), params: { wall_material: new_attributes }
        wall_material.reload
        expect(response).to redirect_to(wall_material_url(wall_material))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        wall_material = WallMaterial.create! valid_attributes
        patch wall_material_url(wall_material), params: { wall_material: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested wall_material' do
      wall_material = WallMaterial.create! valid_attributes
      expect do
        delete wall_material_url(wall_material)
      end.to change(WallMaterial, :count).by(-1)
    end

    it 'redirects to the wall_materials list' do
      wall_material = WallMaterial.create! valid_attributes
      delete wall_material_url(wall_material)
      expect(response).to redirect_to(wall_materials_url)
    end
  end
end