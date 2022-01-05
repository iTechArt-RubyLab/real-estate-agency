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
  describe 'create country side house floors count' do
    let(:valid) { build :floors_count, :valid }
    let(:invalid_big) { build :floors_count, :invalid_big }
    let(:invalid_negative) { build :floors_count, :invalid_negative }
    let(:invalid_with_letters) { build :floors_count, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big floors count' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative floors count' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when floors count with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create country side house land area' do
    let(:valid) { build :land_area, :valid }
    let(:invalid_big) { build :land_area, :invalid_big }
    let(:invalid_negative) { build :land_area, :invalid_negative }
    let(:invalid_with_letters) { build :land_area, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big land area' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative land area' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when land area with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create country side house total area' do
    let(:valid) { build :total_area, :valid }
    let(:invalid_big) { build :total_area, :invalid_big }
    let(:invalid_negative) { build :total_area, :invalid_negative }
    let(:invalid_with_letters) { build :total_area, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big total area' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative total area' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when total area with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create country side house year of construction' do
    let(:valid) { build :year_of_construction, :valid }
    let(:invalid_big) { build :year_of_construction, :invalid_big }
    let(:invalid_negative) { build :year_of_construction, :invalid_negative }
    let(:invalid_with_letters) { build :year_of_construction, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big year of construction' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative year of construction' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when year of construction with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end
end
