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
  describe 'create city name' do
    let(:valid) { create :name, :valid }
    let(:invalid_long) { build :name, :invalid_long }
    let(:invalid_short) { build :name, :invalid_short }
    let(:invalid_with_numbers) { build :name, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too long name' do
      it { expect(invalid_long).not_to be_valid }
    end

    context 'when too short name' do
      it { expect(invalid_short).not_to be_valid }
    end

    context 'when name with numbers' do
      it { expect(invalid_with_numbers).not_to be_valid }
    end
  end

  # describe '.with_region' do
  #   before do
  #     build_list(:city, 5, :brest_region)
  #     build_list(:city, 5, :gomel_region)
  #   end

  #   it { expect(described_class.with_region(:brest).count).to eq(5) }
  # end

  # describe '.with_locality_size' do
  #   before do
  #     build_list(:city, 5, :town_locality_size)
  #     build_list(:city, 5, :city_locality_size)
  #   end

  #   it { expect(described_class.with_locality_size(:town).count).to eq(5) }
  # end
end
