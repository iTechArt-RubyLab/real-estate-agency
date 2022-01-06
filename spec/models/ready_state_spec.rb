# == Schema Information
#
# Table name: ready_states
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe ReadyState, type: :model do
  describe '.ready_state' do
    let(:ready_state) { create :ready_state }
    let(:invalid_long) { build :ready_state, :invalid_long }
    let(:invalid_short) { build :ready_state, :invalid_short }
    let(:invalid_with_numbers) { build :ready_state, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(ready_state).to be_valid }
    end

    context 'when too long' do
      it { expect(invalid_long).not_to be_valid }
    end

    context 'when too short' do
      it { expect(invalid_short).not_to be_valid }
    end

    context 'when with numbers' do
      it { expect(invalid_with_numbers).not_to be_valid }
    end
  end
end
