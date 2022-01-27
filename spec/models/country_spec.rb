# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  name       :string
#  phone_code :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Country, type: :model do
  context 'with valid attributes' do
    subject(:country) { create :country }
    include_examples 'valid model'
  end

  describe '#name' do
    context 'when too long' do
      subject(:invalid_long_name) { build :country, :invalid_long_name }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short_name) { build :country, :invalid_short_name }
      include_examples 'invalid model'
    end

    context 'when with numbers' do
      subject(:invalid_name_with_numbers) { build :country, :invalid_name_with_numbers }
      include_examples 'invalid model'
    end
  end

  describe '#phone_code' do
    context 'when too long' do
      subject(:invalid_long_phone_code) { build :country, :invalid_long_phone_code }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short_phone_code) { build :country, :invalid_short_phone_code }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_phone_code_with_letters) { build :country, :invalid_phone_code_with_letters }
      include_examples 'invalid model'
    end

    context 'when without plus' do
      subject(:invalid_phone_code_without_plus) { build :country, :invalid_phone_code_without_plus }
      include_examples 'invalid model'
    end
  end
end
