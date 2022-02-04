require 'rails_helper'

RSpec.describe CountrySideHousesCatalogs::GetInteractor do
  subject(:get_interactor) { CountrySideHousesCatalogs::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:published_country_side_houses_count) { CountrySideHouse.includes(:lot).where(lot: { state: 'published' }).count }

      it { expect(get_interactor.call.count).to eq(published_country_side_houses_count) }
    end
  end
end
