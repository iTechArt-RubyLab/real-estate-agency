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
  describe 'create flat rooms count' do
    let(:valid) { build :rooms_count, :valid }
    let(:invalid_big) { build :rooms_count, :invalid_big }
    let(:invalid_negative) { build :rooms_count, :invalid_negative }
    let(:invalid_with_letters) { build :rooms_count, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big rooms count' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative rooms count' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when rooms count with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create flat floor' do
    let(:valid) { build :floor_f, :valid }
    let(:invalid_big) { build :floor_f, :invalid_big }
    let(:invalid_negative) { build :floor_f, :invalid_negative }
    let(:invalid_with_letters) { build :floor_f, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big floor' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative floor' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when floor with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create flat year of construction' do
    let(:valid) { build :year_of_construction_f, :valid }
    let(:invalid_big) { build :year_of_construction_f, :invalid_big }
    let(:invalid_negative) { build :year_of_construction_f, :invalid_negative }
    let(:invalid_with_letters) { build :year_of_construction_f, :invalid_with_letters }

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

  describe 'create flat celling height' do
    let(:valid) { build :celling_height, :valid }
    let(:invalid_big) { build :celling_height, :invalid_big }
    let(:invalid_negative) { build :celling_height, :invalid_negative }
    let(:invalid_with_letters) { build :celling_height, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big celling height' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative celling height' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when celling height with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create flat total area' do
    let(:valid) { build :total_area_f, :valid }
    let(:invalid_big) { build :total_area_f, :invalid_big }
    let(:invalid_negative) { build :total_area_f, :invalid_negative }
    let(:invalid_with_letters) { build :total_area_f, :invalid_with_letters }

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

  describe 'create flat living area' do
    let(:valid) { build :living_area, :valid }
    let(:invalid_big) { build :living_area, :invalid_big }
    let(:invalid_negative) { build :living_area, :invalid_negative }
    let(:invalid_with_letters) { build :living_area, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big living area' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative living area' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when living area with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create flat kitchen area' do
    let(:valid) { build :kitchen_area, :valid }
    let(:invalid_big) { build :kitchen_area, :invalid_big }
    let(:invalid_negative) { build :kitchen_area, :invalid_negative }
    let(:invalid_with_letters) { build :kitchen_area, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big kitchen area' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative kitchen area' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when kitchen area with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end
end
