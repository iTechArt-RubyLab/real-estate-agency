# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  name       :string
#  phone_code :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Country, type: :model do
  describe '.country' do
    let(:country) { create :country }
    let(:invalid_long) { build :country, :invalid_long }
    let(:invalid_short) { build :country, :invalid_short }
    let(:invalid_with_numbers) { build :country, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(country).to be_valid }
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
