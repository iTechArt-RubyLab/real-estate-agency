require 'rails_helper'

RSpec.describe Flats::GetInteractor do
  subject(:get_interactor) { Flats::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:flats_list) { create_list(:flat, 6) }

      it { expect(get_interactor.call.count).to eq(flats_list.count) }
    end
  end
end
