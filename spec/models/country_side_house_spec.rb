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
  context 'with valid attributes' do
    subject(:country_side_house) { create :country_side_house }
    include_examples 'valid model'
  end

  describe '#floors_count' do
    context 'when too big' do
      subject(:invalid_big_floors_count) { build :country_side_house, :invalid_big_floors_count }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_floors_count) { build :country_side_house, :invalid_negative_floors_count }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_floors_count) { build :country_side_house, :invalid_with_letters_floors_count }
      include_examples 'invalid model'
    end
  end

  describe '#land_area' do
    context 'when too big' do
      subject(:invalid_big_land_area) { build :country_side_house, :invalid_big_land_area }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_land_area) { build :country_side_house, :invalid_negative_land_area }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_land_area) { build :country_side_house, :invalid_with_letters_land_area }
      include_examples 'invalid model'
    end
  end

  describe '#total_area' do
    context 'when too big' do
      subject(:invalid_big_total_area) { build :country_side_house, :invalid_big_total_area }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_total_area) { build :country_side_house, :invalid_negative_total_area }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_total_area) { build :country_side_house, :invalid_with_letters_total_area }
      include_examples 'invalid model'
    end
  end

  describe '#year_of_construction' do
    context 'when too big' do
      subject(:invalid_big_year_of_construction) { build :country_side_house, :invalid_big_year_of_construction }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_year_of_construction) { build :country_side_house, :invalid_negative_year_of_construction }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_year_of_construction) do
        build :country_side_house, :invalid_with_letters_year_of_construction
      end
      include_examples 'invalid model'
    end
  end
end
