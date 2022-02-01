require 'rails_helper'

RSpec.describe Lots::GetInteractor do
  subject(:get_interactor) { Lots::GetInteractor.new(Lot) }

  describe '.call' do
    context 'when success' do
      let!(:lots_list) { create_list(:lot, 6) }

      it { expect(get_interactor.call.count).to eq(lots_list.count) }
    end
  end
end
