# == Schema Information
#
# Table name: addresses
#
#  id          :bigint           not null, primary key
#  building    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  street_id   :bigint           not null
#
# Indexes
#
#  index_addresses_on_street_id  (street_id)
#
# Foreign Keys
#
#  fk_rails_...  (street_id => streets.id)
#
require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'create address building' do
    let(:valid) { build :building, :valid }
    let(:invalid_big) { build :building, :invalid_big }
    let(:invalid_negative) { build :building, :invalid_negative }
    let(:invalid_with_letters) { build :building, :invalid_with_letters }

    context 'with valid' do
      it { expect(valid).to be_valid }
    end

    context 'when too big' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create address description' do
    let(:valid) { build :description, :valid }
    let(:invalid_long) { build :description, :invalid_long }
    let(:invalid_short) { build :description, :invalid_short }

    context 'with valid' do
      it { expect(valid).to be_valid }
    end

    context 'when too long' do
      it { expect(invalid_long).not_to be_valid }
    end

    context 'when too short' do
      it { expect(invalid_short).not_to be_valid }
    end
  end
end
