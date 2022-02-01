require 'rails_helper'

RSpec.describe Reports::CompletedLotsCountInteractor do
  subject(:interactor) { Reports::CompletedLotsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:completed_lots_count) { Lot.where(state: 'completed').count }

      it { expect(interactor.call).to eq(completed_lots_count) }
    end
  end
end
