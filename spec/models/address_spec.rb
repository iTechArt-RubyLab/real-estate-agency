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
  describe 'create address' do
    let(:address) { build :addresses }

    context 'with valid attributes' do
      it { expect(address).to be_valid }
    end
  end

  describe 'create address building' do
    let(:invalid_big_building) { build :addresses, :invalid_big_building }
    let(:invalid_negative_building) { build :addresses, :invalid_negative_building }
    let(:invalid_with_letters_building) { build :addresses, :invalid_with_letters_building }

    context 'when too big' do
      it { expect(invalid_big_building).not_to be_valid }
    end

    context 'when negative' do
      it { expect(invalid_negative_building).not_to be_valid }
    end

    context 'when with letters' do
      it { expect(invalid_with_letters_building).not_to be_valid }
    end
  end

  describe 'create address description' do
    let(:invalid_long_description) { build :addresses, :invalid_long_description }
    let(:invalid_short_description) { build :addresses, :invalid_short_description }

    context 'when too long' do
      it { expect(invalid_long_description).not_to be_valid }
    end

    context 'when too short' do
      it { expect(invalid_short_description).not_to be_valid }
    end
  end
end
