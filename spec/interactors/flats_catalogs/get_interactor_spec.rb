require 'rails_helper'

RSpec.describe FlatsCatalogs::GetInteractor do
  subject(:get_interactor) { FlatsCatalogs::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:published_flats_count) { Flat.includes(:lot).where(lot: { state: 'published' }).count }

      it { expect(get_interactor.call.count).to eq(published_flats_count) }
    end
  end
end
