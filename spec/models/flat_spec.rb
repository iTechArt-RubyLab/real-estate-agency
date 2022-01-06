# == Schema Information
#
# Table name: flats
#
#  id                   :bigint           not null, primary key
#  celling_height       :decimal(, )
#  floor                :integer
#  kitchen_area         :decimal(, )
#  living_area          :decimal(, )
#  rooms_count          :integer
#  total_area           :decimal(, )
#  year_of_construction :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  renovation_id        :bigint           not null
#  wall_material_id     :bigint           not null
#
# Indexes
#
#  index_flats_on_renovation_id     (renovation_id)
#  index_flats_on_wall_material_id  (wall_material_id)
#
# Foreign Keys
#
#  fk_rails_...  (renovation_id => renovations.id)
#  fk_rails_...  (wall_material_id => wall_materials.id)
#
require 'rails_helper'

RSpec.describe Flat, type: :model do
  describe 'create flat' do
    let(:flats) { build :flats }

    context 'with valid attributes' do
      it { expect(flats).to be_valid }
    end
  end

  describe 'create flat rooms count' do
    let(:invalid_big_rooms_count) { build :flats, :invalid_big_rooms_count }
    let(:invalid_negative_rooms_count) { build :flats, :invalid_negative_rooms_count }
    let(:invalid_with_letters_rooms_count) { build :flats, :invalid_with_letters_rooms_count }

    context 'when too big rooms count' do
      it { expect(invalid_big_rooms_count).not_to be_valid }
    end

    context 'when negative rooms count' do
      it { expect(invalid_negative_rooms_count).not_to be_valid }
    end

    context 'when rooms count with letters' do
      it { expect(invalid_with_letters_rooms_count).not_to be_valid }
    end
  end

  describe 'create flat floor' do
    let(:invalid_big_floor) { build :flats, :invalid_big_floor }
    let(:invalid_negative_floor) { build :flats, :invalid_negative_floor }
    let(:invalid_with_letters_floor) { build :flats, :invalid_with_letters_floor }

    context 'when too big floor' do
      it { expect(invalid_big_floor).not_to be_valid }
    end

    context 'when negative floor' do
      it { expect(invalid_negative_floor).not_to be_valid }
    end

    context 'when floor with letters' do
      it { expect(invalid_with_letters_floor).not_to be_valid }
    end
  end

  describe 'create flat year of construction' do
    let(:invalid_big_year_of_construction) { build :flats, :invalid_big_year_of_construction }
    let(:invalid_negative_year_of_construction) { build :flats, :invalid_negative_year_of_construction }
    let(:invalid_with_letters_year_of_construction) { build :flats, :invalid_with_letters_year_of_construction }

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

  describe 'create flat celling height' do
    let(:invalid_big_celling_height) { build :flats, :invalid_big_celling_height }
    let(:invalid_negative_celling_height) { build :flats, :invalid_negative_celling_height }
    let(:invalid_with_letters_celling_height) { build :flats, :invalid_with_letters_celling_height }

    context 'when too big celling height' do
      it { expect(invalid_big_celling_height).not_to be_valid }
    end

    context 'when negative celling height' do
      it { expect(invalid_negative_celling_height).not_to be_valid }
    end

    context 'when celling height with letters' do
      it { expect(invalid_with_letters_celling_height).not_to be_valid }
    end
  end

  describe 'create flat total area' do
    let(:invalid_big_total_area) { build :flats, :invalid_big_total_area }
    let(:invalid_negative_total_area) { build :flats, :invalid_negative_total_area }
    let(:invalid_with_letters_total_area) { build :flats, :invalid_with_letters_total_area }

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

  describe 'create flat living area' do
    let(:invalid_big_living_area) { build :flats, :invalid_big_living_area }
    let(:invalid_negative_living_area) { build :flats, :invalid_negative_living_area }
    let(:invalid_with_letters_living_area) { build :flats, :invalid_with_letters_living_area }

    context 'when too big living area' do
      it { expect(invalid_big_living_area).not_to be_valid }
    end

    context 'when negative living area' do
      it { expect(invalid_negative_living_area).not_to be_valid }
    end

    context 'when living area with letters' do
      it { expect(invalid_with_letters_living_area).not_to be_valid }
    end
  end

  describe 'create flat kitchen area' do
    let(:invalid_big_kitchen_area) { build :flats, :invalid_big_kitchen_area }
    let(:invalid_negative_kitchen_area) { build :flats, :invalid_negative_kitchen_area }
    let(:invalid_with_letters_kitchen_area) { build :flats, :invalid_with_letters_kitchen_area }

    context 'when too big kitchen area' do
      it { expect(invalid_big_kitchen_area).not_to be_valid }
    end

    context 'when negative kitchen area' do
      it { expect(invalid_negative_kitchen_area).not_to be_valid }
    end

    context 'when kitchen area with letters' do
      it { expect(invalid_with_letters_kitchen_area).not_to be_valid }
    end
  end
end
