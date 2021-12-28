# == Schema Information
#
# Table name: addresses
#
#  id                :bigint           not null, primary key
#  building          :integer
#  number_of_storeys :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  street_id         :bigint           not null
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
    let(:valid) { create :building, :valid }
    let(:invalid_big) { build :building, :invalid_big }
    let(:invalid_negative) { build :building, :invalid_negative }
    let(:invalid_with_letters) { build :building, :invalid_with_letters }

    context 'with valid' do
      it { expect(valid).to be_valid }
    end

    context 'when too big' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when too small' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create address numbers of storeys' do
    let(:valid) { create :number_of_storeys, :valid }
    let(:invalid_big) { build :number_of_storeys, :invalid_big }
    let(:invalid_negative) { build :number_of_storeys, :invalid_negative }
    let(:invalid_with_letters) { build :number_of_storeys, :invalid_with_letters }

    context 'with valid' do
      it { expect(valid).to be_valid }
    end

    context 'when too big' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when too small' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end
end
