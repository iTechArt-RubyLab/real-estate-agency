# == Schema Information
#
# Table name: lots
#
#  id           :bigint           not null, primary key
#  description  :text
#  lotable_type :string
#  price        :decimal(, )
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
  describe '.lot' do
    let(:lot) { create :lot }

    context 'with valid attributes' do
      it { expect(lot).to be_valid }
    end
  end

  describe '#title' do
    let(:invalid_long_title) { build :lot, :invalid_long_title }
    let(:invalid_short_title) { build :lot, :invalid_short_title }

    context 'when too long title' do
      it { expect(invalid_long_title).not_to be_valid }
    end

    context 'when too short title' do
      it { expect(invalid_short_title).not_to be_valid }
    end
  end

  describe '#description' do
    let(:invalid_long_description) { build :lot, :invalid_long_description }
    let(:invalid_short_description) { build :lot, :invalid_short_description }

    context 'when too long description' do
      it { expect(invalid_long_description).not_to be_valid }
    end

    context 'when too short description' do
      it { expect(invalid_short_description).not_to be_valid }
    end
  end

  describe '#price' do
    let(:invalid_big_price) { build :lot, :invalid_big_price }
    let(:invalid_negative_price) { build :lot, :invalid_negative_price }
    let(:invalid_with_letters_price) { build :lot, :invalid_with_letters_price }

    context 'when too big price' do
      it { expect(invalid_big_price).not_to be_valid }
    end

    context 'when negative price' do
      it { expect(invalid_negative_price).not_to be_valid }
    end

    context 'when price with letters' do
      it { expect(invalid_with_letters_price).not_to be_valid }
    end
  end
end
