# == Schema Information
#
# Table name: renovations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Renovation, type: :model do
  describe 'create renovation name' do
    let(:renovation) { build :renovation }
    let(:invalid_long) { build :renovation, :invalid_long }
    let(:invalid_short) { build :renovation, :invalid_short }
    let(:invalid_with_numbers) { build :renovation, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(renovation).to be_valid }
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
