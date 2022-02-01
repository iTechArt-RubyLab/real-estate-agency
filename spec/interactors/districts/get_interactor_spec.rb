require 'rails_helper'

RSpec.describe Districts::GetInteractor do
  subject(:get_interactor) { Districts::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:districts_list) { create_list(:district, 6) }

      it { expect(get_interactor.call.count).to eq(districts_list.count) }
    end
  end
end
