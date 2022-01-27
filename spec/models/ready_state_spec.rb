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
  context 'with valid attributes' do
    subject(:ready_state) { create :ready_state }
    include_examples 'valid model'
  end

  describe '#name' do
    context 'when too long' do
      subject(:invalid_long) { build :ready_state, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :ready_state, :invalid_short }
      include_examples 'invalid model'
    end

    context 'when with numbers' do
      subject(:invalid_with_numbers) { build :ready_state, :invalid_with_numbers }
      include_examples 'invalid model'
    end
  end
end
