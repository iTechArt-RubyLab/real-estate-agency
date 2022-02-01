require 'rails_helper'

RSpec.describe Reports::InProgressLotsCountInteractor do
  subject(:interactor) { Reports::InProgressLotsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:in_progress_lots_count) { Lot.where(state: 'in_progress').count }

      it { expect(interactor.call).to eq(in_progress_lots_count) }
    end
  end
end
