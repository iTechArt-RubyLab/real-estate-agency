# == Schema Information
#
# Table name: commercial_premises_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe CommercialPremisesKind, type: :model do
  describe 'create commercial premises kind name' do
    let(:valid) { build :commercial_premises_kind, :valid }
    let(:invalid_long) { build :commercial_premises_kind, :invalid_long }
    let(:invalid_short) { build :commercial_premises_kind, :invalid_short }
    let(:invalid_with_numbers) { build :commercial_premises_kind, :invalid_with_numbers }

    context 'with valid' do
      it { expect(valid).to be_valid }
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
