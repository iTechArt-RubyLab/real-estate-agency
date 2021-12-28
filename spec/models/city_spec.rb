# == Schema Information
#
# Table name: cities
#
#  id            :bigint           not null, primary key
#  description   :text
#  locality_size :integer
#  name          :string
#  region        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'create city' do
    let(:city) { create(:city) }
    let(:invalid_long_city) { build(:city) }
    let(:invalid_short_city) { build(:city) }
    let(:invalid_city_with_numbers) { build(:city) }

    context 'with valid attributes' do
      it { expect(city).to be_valid }
    end

    context 'when too long name' do
      it { expect(invalid_long_city).to be_valid }
    end

    context 'when too short name' do
      it { expect(invalid_short_city).to be_valid }
    end

    context 'when name with numbers' do
      it { expect(invalid_city_with_numbers).to be_valid }
    end
  end

  describe '.with_region' do
    before do
      create_list(:city, 5, :brest_region)
      create_list(:city, 5, :gomel_region)
    end

    it { expect(described_class.with_region(:brest).count).to eq(5) }
  end

  describe '.with_locality_size' do
    before do
      create_list(:city, 5, :town_locality_size)
      create_list(:city, 5, :city_locality_size)
    end

    it { expect(described_class.with_locality_size(:city).count).to eq(5) }
  end
end
