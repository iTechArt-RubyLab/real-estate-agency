# == Schema Information
#
# Table name: addresses
#
#  id          :bigint           not null, primary key
#  building    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  street_id   :bigint           not null
#
# Indexes
#
#  index_addresses_on_street_id  (street_id)
#
# Foreign Keys
#
#  fk_rails_...  (street_id => streets.id)
#
require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'with valid attributes' do
    subject(:address) { create :address }
    include_examples 'valid model'
  end

  describe '#building' do
    context 'when too big' do
      subject(:invalid_big_building) { build :address, :invalid_big_building }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_building) { build :address, :invalid_negative_building }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_building) { build :address, :invalid_with_letters_building }
      include_examples 'invalid model'
    end
  end

  describe '#description' do
    context 'when too long' do
      subject(:invalid_long_description) { build :address, :invalid_long_description }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short_description) { build :address, :invalid_short_description }
      include_examples 'invalid model'
    end
  end
end
