# == Schema Information
#
# Table name: deal_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe DealType, type: :model do
  describe '.deal_type' do
    let(:deal_type) { create :deal_type }
    let(:invalid_long) { build :deal_type, :invalid_long }
    let(:invalid_short) { build :deal_type, :invalid_short }
    let(:invalid_with_numbers) { build :deal_type, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(deal_type).to be_valid }
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
