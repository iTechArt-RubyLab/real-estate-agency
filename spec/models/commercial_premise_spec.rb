# == Schema Information
#
# Table name: commercial_premises
#
#  id                          :bigint           not null, primary key
#  area                        :decimal(, )
#  floor                       :integer
#  number_of_premises          :integer
#  plot_of_land                :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  commercial_premises_kind_id :bigint           not null
#
# Indexes
#
#  index_commercial_premises_on_commercial_premises_kind_id  (commercial_premises_kind_id)
#
# Foreign Keys
#
#  fk_rails_...  (commercial_premises_kind_id => commercial_premises_kinds.id)
#
require 'rails_helper'

RSpec.describe CommercialPremise, type: :model do
  describe 'create commercial premise area' do
    let(:valid) { build :area, :valid }
    let(:invalid_big) { build :area, :invalid_big }
    let(:invalid_negative) { build :area, :invalid_negative }
    let(:invalid_with_letters) { build :area, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big area' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative area' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when area with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create commercial premise floor' do
    let(:valid) { build :floor, :valid }
    let(:invalid_big) { build :floor, :invalid_big }
    let(:invalid_negative) { build :floor, :invalid_negative }
    let(:invalid_with_letters) { build :floor, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big floor' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative floor' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when floor with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create commercial premise number of premises' do
    let(:valid) { build :number_of_premises, :valid }
    let(:invalid_big) { build :number_of_premises, :invalid_big }
    let(:invalid_negative) { build :number_of_premises, :invalid_negative }
    let(:invalid_with_letters) { build :number_of_premises, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big number of premises' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative number of premises' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when number of premises with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end

  describe 'create commercial premise plot of land' do
    let(:valid) { build :plot_of_land, :valid }
    let(:invalid_big) { build :plot_of_land, :invalid_big }
    let(:invalid_negative) { build :plot_of_land, :invalid_negative }
    let(:invalid_with_letters) { build :plot_of_land, :invalid_with_letters }

    context 'with valid attributes' do
      it { expect(valid).to be_valid }
    end

    context 'when too big plot of lands' do
      it { expect(invalid_big).not_to be_valid }
    end

    context 'when negative plot of land' do
      it { expect(invalid_negative).not_to be_valid }
    end

    context 'when plot of land with letters' do
      it { expect(invalid_with_letters).not_to be_valid }
    end
  end
end
