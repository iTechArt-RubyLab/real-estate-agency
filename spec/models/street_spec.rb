# == Schema Information
#
# Table name: streets
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  district_id :bigint           not null
#
# Indexes
#
#  index_streets_on_district_id  (district_id)
#
# Foreign Keys
#
#  fk_rails_...  (district_id => districts.id)
#
require 'rails_helper'

RSpec.describe Street, type: :model do
  describe 'create street' do
    let(:valid) { build :street, :valid }
    let(:invalid_long) { build :street, :invalid_long }
    let(:invalid_short) { build :street, :invalid_short }
    let(:invalid_with_numbers) { build :street, :invalid_with_numbers }

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
end
