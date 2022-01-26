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

RSpec.describe '/commercial_premises_kinds', type: :request do
  # CommercialPremisesKind. As you add validations to CommercialPremisesKind, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    attributes_for :commercial_premises_kind
  end

  let(:invalid_attributes) do
    attributes_for :commercial_premises_kind, :invalid_short
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      CommercialPremisesKind.create! valid_attributes
      get commercial_premises_kinds_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
      get commercial_premises_kind_url(commercial_premises_kind)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_commercial_premises_kind_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
      get edit_commercial_premises_kind_url(commercial_premises_kind)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new CommercialPremisesKind' do
        expect do
          post commercial_premises_kinds_url, params: { commercial_premises_kind: valid_attributes }
        end.to change(CommercialPremisesKind, :count).by(1)
      end

      it 'redirects to the created commercial_premises_kind' do
        post commercial_premises_kinds_url, params: { commercial_premises_kind: valid_attributes }
        expect(response).to redirect_to(commercial_premises_kind_url(CommercialPremisesKind.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new CommercialPremisesKind' do
        expect do
          post commercial_premises_kinds_url, params: { commercial_premises_kind: invalid_attributes }
        end.to change(CommercialPremisesKind, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post commercial_premises_kinds_url, params: { commercial_premises_kind: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        attributes_for :commercial_premises_kind
      end

      it 'updates the requested commercial_premises_kind' do
        commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
        patch commercial_premises_kind_url(commercial_premises_kind),
              params: { commercial_premises_kind: new_attributes }
        commercial_premises_kind.reload
        attributes_for :commercial_premises_kind
      end

      it 'redirects to the commercial_premises_kind' do
        commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
        patch commercial_premises_kind_url(commercial_premises_kind),
              params: { commercial_premises_kind: new_attributes }
        commercial_premises_kind.reload
        expect(response).to redirect_to(commercial_premises_kind_url(commercial_premises_kind))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
        patch commercial_premises_kind_url(commercial_premises_kind),
              params: { commercial_premises_kind: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested commercial_premises_kind' do
      commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
      expect do
        delete commercial_premises_kind_url(commercial_premises_kind)
      end.to change(CommercialPremisesKind, :count).by(-1)
    end

    it 'redirects to the commercial_premises_kinds list' do
      commercial_premises_kind = CommercialPremisesKind.create! valid_attributes
      delete commercial_premises_kind_url(commercial_premises_kind)
      expect(response).to redirect_to(commercial_premises_kinds_url)
    end
  end
end
