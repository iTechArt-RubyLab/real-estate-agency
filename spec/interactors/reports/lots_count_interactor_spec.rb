require 'rails_helper'

RSpec.describe Reports::LotsCountInteractor do
  subject(:interactor) { Reports::LotsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:lots_count) { Lot.count }

      it { expect(interactor.call).to eq(lots_count) }
    end
  end
end
