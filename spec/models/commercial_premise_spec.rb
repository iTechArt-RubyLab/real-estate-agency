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
  describe 'create commercial premise' do
    let(:commercial_premise) { build :commercial_premise }

    context 'with valid attributes' do
      it { expect(commercial_premise).to be_valid }
    end
  end

  describe 'create commercial premise area' do
    let(:invalid_big_area) { build :commercial_premise, :invalid_big_area }
    let(:invalid_negative_area) { build :commercial_premise, :invalid_negative_area }
    let(:invalid_with_letters_area) { build :commercial_premise, :invalid_with_letters_area }

    context 'when too big area' do
      it { expect(invalid_big_area).not_to be_valid }
    end

    context 'when negative area' do
      it { expect(invalid_negative_area).not_to be_valid }
    end

    context 'when area with letters' do
      it { expect(invalid_with_letters_area).not_to be_valid }
    end
  end

  describe 'create commercial premise floor' do
    let(:invalid_big_floor) { build :commercial_premise, :invalid_big_floor }
    let(:invalid_negative_floor) { build :commercial_premise, :invalid_negative_floor }
    let(:invalid_with_letters_floor) { build :commercial_premise, :invalid_with_letters_floor }

    context 'when too big floor' do
      it { expect(invalid_big_floor).not_to be_valid }
    end

    context 'when negative floor' do
      it { expect(invalid_negative_floor).not_to be_valid }
    end

    context 'when floor with letters' do
      it { expect(invalid_with_letters_floor).not_to be_valid }
    end
  end

  describe 'create commercial premise number of premises' do
    let(:invalid_big_number_of_premises) { build :commercial_premise, :invalid_big_number_of_premises }
    let(:invalid_negative_number_of_premises) { build :commercial_premise, :invalid_negative_number_of_premises }
    let(:invalid_with_letters_number_of_premises) do
      build :commercial_premise, :invalid_with_letters_number_of_premises
    end

    context 'when too big number of premises' do
      it { expect(invalid_big_number_of_premises).not_to be_valid }
    end

    context 'when negative number of premises' do
      it { expect(invalid_negative_number_of_premises).not_to be_valid }
    end

    context 'when number of premises with letters' do
      it { expect(invalid_with_letters_number_of_premises).not_to be_valid }
    end
  end

  describe 'create commercial premise plot of land' do
    let(:invalid_big_plot_of_land) { build :commercial_premise, :invalid_big_plot_of_land }
    let(:invalid_negative_plot_of_land) { build :commercial_premise, :invalid_negative_plot_of_land }
    let(:invalid_with_letters_plot_of_land) { build :commercial_premise, :invalid_with_letters_plot_of_land }

    context 'when too big plot of lands' do
      it { expect(invalid_big_plot_of_land).not_to be_valid }
    end

    context 'when negative plot of land' do
      it { expect(invalid_negative_plot_of_land).not_to be_valid }
    end

    context 'when plot of land with letters' do
      it { expect(invalid_with_letters_plot_of_land).not_to be_valid }
    end
  end
end
