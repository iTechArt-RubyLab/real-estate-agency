require 'rails_helper'

RSpec.describe Reports::NotStartedLotsCountInteractor do
  subject(:interactor) { Reports::NotStartedLotsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:not_started_lots_count) { Lot.where(state: 'not_started').count }

      it { expect(interactor.call).to eq(not_started_lots_count) }
    end
  end
end
