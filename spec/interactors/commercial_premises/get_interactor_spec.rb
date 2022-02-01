require 'rails_helper'

RSpec.describe CommercialPremises::GetInteractor do
  subject(:get_interactor) { CommercialPremises::GetInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:commercial_premises_list) { create_list(:commercial_premise, 6) }

      it { expect(get_interactor.call.count).to eq(commercial_premises_list.count) }
    end
  end
end
