require 'rails_helper'

RSpec.describe CountrySideHouses::GetInteractor do
  subject(:get_interactor) { CountrySideHouses::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:country_side_houses_list) { create_list(:country_side_house, 6) }

      it { expect(get_interactor.call.count).to eq(country_side_houses_list.count) }
    end
  end
end
