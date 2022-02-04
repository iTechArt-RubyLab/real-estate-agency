require 'rails_helper'

RSpec.describe CommercialPremisesCatalogs::GetInteractor do
  subject(:get_interactor) { CommercialPremisesCatalogs::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:published_commercial_premises_count) { CommercialPremise.includes(:lot).where(lot: { state: 'published' }).count }

      it { expect(get_interactor.call.count).to eq(published_commercial_premises_count) }
    end
  end
end
