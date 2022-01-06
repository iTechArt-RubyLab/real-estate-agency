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

RSpec.describe "/property_types", type: :request do
  
  # PropertyType. As you add validations to PropertyType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PropertyType.create! valid_attributes
      get property_types_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      property_type = PropertyType.create! valid_attributes
      get property_type_url(property_type)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_property_type_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      property_type = PropertyType.create! valid_attributes
      get edit_property_type_url(property_type)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PropertyType" do
        expect {
          post property_types_url, params: { property_type: valid_attributes }
        }.to change(PropertyType, :count).by(1)
      end

      it "redirects to the created property_type" do
        post property_types_url, params: { property_type: valid_attributes }
        expect(response).to redirect_to(property_type_url(PropertyType.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PropertyType" do
        expect {
          post property_types_url, params: { property_type: invalid_attributes }
        }.to change(PropertyType, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post property_types_url, params: { property_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested property_type" do
        property_type = PropertyType.create! valid_attributes
        patch property_type_url(property_type), params: { property_type: new_attributes }
        property_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the property_type" do
        property_type = PropertyType.create! valid_attributes
        patch property_type_url(property_type), params: { property_type: new_attributes }
        property_type.reload
        expect(response).to redirect_to(property_type_url(property_type))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        property_type = PropertyType.create! valid_attributes
        patch property_type_url(property_type), params: { property_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested property_type" do
      property_type = PropertyType.create! valid_attributes
      expect {
        delete property_type_url(property_type)
      }.to change(PropertyType, :count).by(-1)
    end

    it "redirects to the property_types list" do
      property_type = PropertyType.create! valid_attributes
      delete property_type_url(property_type)
      expect(response).to redirect_to(property_types_url)
    end
  end
end
