# == Schema Information
#
# Table name: property_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe PropertyType, type: :model do
  describe '.property_type' do
    let(:property_type) { create :property_type }
    let(:invalid_long) { build :property_type, :invalid_long }
    let(:invalid_short) { build :property_type, :invalid_short }
    let(:invalid_with_numbers) { build :property_type, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(property_type).to be_valid }
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
