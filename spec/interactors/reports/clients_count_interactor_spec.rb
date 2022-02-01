require 'rails_helper'

RSpec.describe Reports::ClientsCountInteractor do
  subject(:interactor) { Reports::ClientsCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:clients_count) { User.where(profilable_type: 'ClientProfile').count }

      it { expect(interactor.call).to eq(clients_count) }
    end
  end
end
