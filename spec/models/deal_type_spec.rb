# == Schema Information
#
# Table name: deal_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe DealType, type: :model do
  context 'with valid attributes' do
    subject(:deal_type) { create :deal_type }
    include_examples 'valid model'
  end

  describe '#name' do
    context 'when too long' do
      subject(:invalid_long) { build :deal_type, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :deal_type, :invalid_short }
      include_examples 'invalid model'
    end

    context 'when with numbers' do
      subject(:invalid_with_numbers) { build :deal_type, :invalid_with_numbers }
      include_examples 'invalid model'
    end
  end
end
