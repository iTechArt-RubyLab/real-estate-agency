require 'rails_helper'

RSpec.describe Reports::LockedUsersCountInteractor do
  subject(:interactor) { Reports::LockedUsersCountInteractor.new }

  describe '.call' do
    context 'when success' do
      let!(:locked_users_count) { User.where.not(locked_at: nil).count }

      it { expect(interactor.call).to eq(locked_users_count) }
    end
  end
end
