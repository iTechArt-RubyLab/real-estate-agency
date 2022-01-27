# == Schema Information
#
# Table name: lots
#
#  id           :bigint           not null, primary key
#  description  :text
#  lotable_type :string
#  price        :decimal(, )
#  state        :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  address_id   :bigint           not null
#  asignee_id   :bigint
#  asigner_id   :bigint
#  client_id    :bigint
#  deal_type_id :bigint           not null
#  lotable_id   :bigint
#
# Indexes
#
#  index_lots_on_address_id    (address_id)
#  index_lots_on_asignee_id    (asignee_id)
#  index_lots_on_asigner_id    (asigner_id)
#  index_lots_on_client_id     (client_id)
#  index_lots_on_deal_type_id  (deal_type_id)
#  index_lots_on_lotable       (lotable_type,lotable_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_id => addresses.id)
#  fk_rails_...  (asignee_id => users.id)
#  fk_rails_...  (asigner_id => users.id)
#  fk_rails_...  (client_id => users.id)
#  fk_rails_...  (deal_type_id => deal_types.id)
#
require 'rails_helper'

RSpec.describe Lot, type: :model do
  context 'with valid attributes' do
    subject(:lot) { create :lot }
    include_examples 'valid model'
  end

  describe '#title' do
    context 'when too long' do
      subject(:invalid_long_title) { build :lot, :invalid_long_title }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short_title) { build :lot, :invalid_short_title }
      include_examples 'invalid model'
    end
  end

  describe '#description' do
    context 'when too long' do
      subject(:invalid_long_description) { build :lot, :invalid_long_description }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short_description) { build :lot, :invalid_short_description }
      include_examples 'invalid model'
    end
  end

  describe '#price' do
    context 'when too big' do
      subject(:invalid_big_price) { build :lot, :invalid_big_price }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_price) { build :lot, :invalid_negative_price }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_price) { build :lot, :invalid_with_letters_price }
      include_examples 'invalid model'
    end
  end
end
