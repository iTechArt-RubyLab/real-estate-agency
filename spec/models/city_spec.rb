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
  describe '.city' do
    let(:city) { create :city }
    let(:invalid_long) { build :city, :invalid_long }
    let(:invalid_short) { build :city, :invalid_short }
    let(:invalid_with_numbers) { build :city, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(city).to be_valid }
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
