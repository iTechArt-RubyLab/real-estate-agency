# == Schema Information
#
# Table name: wall_materials
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe WallMaterial, type: :model do
  describe 'create wall material name' do
    let(:wall_material) { build :wall_material }
    let(:invalid_long) { build :wall_material, :invalid_long }
    let(:invalid_short) { build :wall_material, :invalid_short }
    let(:invalid_with_numbers) { build :wall_material, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(wall_material).to be_valid }
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
