require 'rails_helper'

RSpec.describe Reports::BlockedLotsCountInteractor do
  subject(:interactor) { Reports::BlockedLotsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:blocked_lots_count) { Lot.where(state: 'blocked').count }

      it { expect(interactor.call).to eq(blocked_lots_count) }
    end
  end
end
