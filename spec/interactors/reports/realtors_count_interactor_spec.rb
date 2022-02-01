require 'rails_helper'

RSpec.describe Reports::RealtorsCountInteractor do
  subject(:interactor) { Reports::RealtorsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:realtors_count) { User.where(profilable_type: 'RealtorProfile').count }

      it { expect(interactor.call).to eq(realtors_count) }
    end
  end
end
