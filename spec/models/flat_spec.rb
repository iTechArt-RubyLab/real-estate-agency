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
  context 'with valid attributes' do
    subject(:flat) { create :flat }
    include_examples 'valid model'
  end

  describe '#rooms_count' do
    context 'when too big' do
      subject(:invalid_big_rooms_count) { build :flat, :invalid_big_rooms_count }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_rooms_count) { build :flat, :invalid_negative_rooms_count }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_rooms_count) { build :flat, :invalid_with_letters_rooms_count }
      include_examples 'invalid model'
    end
  end

  describe '#floor' do
    context 'when too big' do
      subject(:invalid_big_floor) { build :flat, :invalid_big_floor }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_floor) { build :flat, :invalid_negative_floor }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_floor) { build :flat, :invalid_with_letters_floor }
      include_examples 'invalid model'
    end
  end

  describe '#year_of_construction' do
    context 'when too big' do
      subject(:invalid_big_year_of_construction) { build :flat, :invalid_big_year_of_construction }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_year_of_construction) { build :flat, :invalid_negative_year_of_construction }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_year_of_construction) { build :flat, :invalid_with_letters_year_of_construction }
      include_examples 'invalid model'
    end
  end

  describe '#celling_height' do
    context 'when too big' do
      subject(:invalid_big_celling_height) { build :flat, :invalid_big_celling_height }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_celling_height) { build :flat, :invalid_negative_celling_height }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_celling_height) { build :flat, :invalid_with_letters_celling_height }
      include_examples 'invalid model'
    end
  end

  describe '#total_area' do
    context 'when too big' do
      subject(:invalid_big_total_area) { build :flat, :invalid_big_total_area }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_total_area) { build :flat, :invalid_negative_total_area }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_total_area) { build :flat, :invalid_with_letters_total_area }
      include_examples 'invalid model'
    end
  end

  describe '#living_area' do
    context 'when too big' do
      subject(:invalid_big_living_area) { build :flat, :invalid_big_living_area }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_living_area) { build :flat, :invalid_negative_living_area }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_living_area) { build :flat, :invalid_with_letters_living_area }
      include_examples 'invalid model'
    end
  end

  describe '#kitchen_area' do
    context 'when too big' do
      subject(:invalid_big_kitchen_area) { build :flat, :invalid_big_kitchen_area }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_kitchen_area) { build :flat, :invalid_negative_kitchen_area }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_kitchen_area) { build :flat, :invalid_with_letters_kitchen_area }
      include_examples 'invalid model'
    end
  end
end
