require 'rails_helper'

RSpec.describe Reports::CountrySideHousesCountInteractor do
  subject(:interactor) { Reports::CountrySideHousesCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:country_side_houses_count) { Lot.where(lotable_type: 'CountrySideHouse').count }

      it { expect(interactor.call).to eq(country_side_houses_count) }
    end
  end
end
