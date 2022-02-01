require 'rails_helper'

RSpec.describe Reports::CommercialPremisesCountInteractor do
  subject(:interactor) { Reports::CommercialPremisesCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:comemrcial_premises_count) { Lot.where(lotable_type: 'CommercialPremise').count }

      it { expect(interactor.call).to eq(comemrcial_premises_count) }
    end
  end
end
