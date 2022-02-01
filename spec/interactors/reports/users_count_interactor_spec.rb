require 'rails_helper'

RSpec.describe Reports::UsersCountInteractor do
  subject(:interactor) { Reports::UsersCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:users_count) { User.count }

      it { expect(interactor.call).to eq(users_count) }
    end
  end
end
