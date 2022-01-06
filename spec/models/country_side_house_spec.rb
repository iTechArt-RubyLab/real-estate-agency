# == Schema Information
#
# Table name: country_side_houses
#
#  id                         :bigint           not null, primary key
#  floors_count               :integer
#  land_area                  :decimal(, )
#  total_area                 :decimal(, )
#  year_of_construction       :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  country_side_house_kind_id :bigint           not null
#  ready_state_id             :bigint           not null
#  wall_material_id           :bigint           not null
#
# Indexes
#
#  index_country_side_houses_on_country_side_house_kind_id  (country_side_house_kind_id)
#  index_country_side_houses_on_ready_state_id              (ready_state_id)
#  index_country_side_houses_on_wall_material_id            (wall_material_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_side_house_kind_id => country_side_house_kinds.id)
#  fk_rails_...  (ready_state_id => ready_states.id)
#  fk_rails_...  (wall_material_id => wall_materials.id)
#
require 'rails_helper'

RSpec.describe CountrySideHouse, type: :model do
  describe 'create country side house' do
    let(:country_side_house) { build :country_side_house }

    context 'with valid attributes' do
      it { expect(country_side_house).to be_valid }
    end
  end

  describe 'create country side house floors count' do
    let(:invalid_big_floors_count) { build :country_side_house, :invalid_big_floors_count }
    let(:invalid_negative_floors_count) { build :country_side_house, :invalid_negative_floors_count }
    let(:invalid_with_letters_floors_count) { build :country_side_house, :invalid_with_letters_floors_count }

    context 'when too big floors count' do
      it { expect(invalid_big_floors_count).not_to be_valid }
    end

    context 'when negative floors count' do
      it { expect(invalid_negative_floors_count).not_to be_valid }
    end

    context 'when floors count with letters' do
      it { expect(invalid_with_letters_floors_count).not_to be_valid }
    end
  end

  describe 'create country side house land area' do
    let(:invalid_big_land_area) { build :country_side_house, :invalid_big_land_area }
    let(:invalid_negative_land_area) { build :country_side_house, :invalid_negative_land_area }
    let(:invalid_with_letters_land_area) { build :country_side_house, :invalid_with_letters_land_area }

    context 'when too big land area' do
      it { expect(invalid_big_land_area).not_to be_valid }
    end

    context 'when negative land area' do
      it { expect(invalid_negative_land_area).not_to be_valid }
    end

    context 'when land area with letters' do
      it { expect(invalid_with_letters_land_area).not_to be_valid }
    end
  end

  describe 'create country side house total area' do
    let(:invalid_big_total_area) { build :country_side_house, :invalid_big_total_area }
    let(:invalid_negative_total_area) { build :country_side_house, :invalid_negative_total_area }
    let(:invalid_with_letters_total_area) { build :country_side_house, :invalid_with_letters_total_area }

    context 'when too big total area' do
      it { expect(invalid_big_total_area).not_to be_valid }
    end

    context 'when negative total area' do
      it { expect(invalid_negative_total_area).not_to be_valid }
    end

    context 'when total area with letters' do
      it { expect(invalid_with_letters_total_area).not_to be_valid }
    end
  end

  describe 'create country side house year of construction' do
    let(:invalid_big_year_of_construction) { build :country_side_house, :invalid_big_year_of_construction }
    let(:invalid_negative_year_of_construction) { build :country_side_house, :invalid_negative_year_of_construction }
    let(:invalid_with_letters_year_of_construction) do
      build :country_side_house, :invalid_with_letters_year_of_construction
    end

    context 'when too big year of construction' do
      it { expect(invalid_big_year_of_construction).not_to be_valid }
    end

    context 'when negative year of construction' do
      it { expect(invalid_negative_year_of_construction).not_to be_valid }
    end

    context 'when year of construction with letters' do
      it { expect(invalid_with_letters_year_of_construction).not_to be_valid }
    end
  end
end
