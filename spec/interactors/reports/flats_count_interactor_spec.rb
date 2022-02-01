require 'rails_helper'

RSpec.describe Reports::FlatsCountInteractor do
  subject(:interactor) { Reports::FlatsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:flats_count) { Lot.where(lotable_type: 'Flat').count }

      it { expect(interactor.call).to eq(flats_count) }
    end
  end
end
