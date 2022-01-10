# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe '.tag' do
    let(:tag) { create :tag }
    let(:invalid_long) { build :tag, :invalid_long }
    let(:invalid_short) { build :tag, :invalid_short }
    let(:invalid_with_numbers) { build :tag, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(tag).to be_valid }
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
