# == Schema Information
#
# Table name: districts
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :bigint           not null
#
# Indexes
#
#  index_districts_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#
require 'rails_helper'

RSpec.describe District, type: :model do
  context 'with valid attributes' do
    subject(:district) { create :district }
    include_examples 'valid model'
  end

  describe '#name' do
    context 'when too long' do
      subject(:invalid_long) { build :district, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :district, :invalid_short }
      include_examples 'invalid model'
    end

    context 'when with numbers' do
      subject(:invalid_with_numbers) { build :district, :invalid_with_numbers }
      include_examples 'invalid model'
    end
  end
end
