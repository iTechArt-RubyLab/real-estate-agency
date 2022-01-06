# == Schema Information
#
# Table name: country_side_house_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe CountrySideHouseKind, type: :model do
  describe '.country_side_house_kind' do
    let(:country_side_house_kind) { create :country_side_house_kind }
    let(:invalid_long) { build :country_side_house_kind, :invalid_long }
    let(:invalid_short) { build :country_side_house_kind, :invalid_short }
    let(:invalid_with_numbers) { build :country_side_house_kind, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(country_side_house_kind).to be_valid }
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
