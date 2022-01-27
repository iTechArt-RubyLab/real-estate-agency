# == Schema Information
#
# Table name: commercial_premises_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe CommercialPremisesKind, type: :model do
  context 'with valid attributes' do
    subject(:commercial_premises_kind) { create :commercial_premises_kind }
    include_examples 'valid model'
  end

  describe '#name' do
    context 'when too long' do
      subject(:invalid_long) { build :commercial_premises_kind, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :commercial_premises_kind, :invalid_short }
      include_examples 'invalid model'
    end

    context 'when with numbers' do
      subject(:invalid_with_numbers) { build :commercial_premises_kind, :invalid_with_numbers }
      include_examples 'invalid model'
    end
  end
end
