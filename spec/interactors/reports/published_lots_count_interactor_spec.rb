require 'rails_helper'

RSpec.describe Reports::PublishedLotsCountInteractor do
  subject(:interactor) { Reports::PublishedLotsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:published_lots_count) { Lot.where(state: 'published').count }

      it { expect(interactor.call).to eq(published_lots_count) }
    end
  end
end
