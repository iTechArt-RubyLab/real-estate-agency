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
  context 'with valid attributes' do
    subject(:commercial_premise) { create :commercial_premise }
    include_examples 'valid model'
  end

  describe '#area' do
    context 'when too big' do
      subject(:invalid_big_area) { build :commercial_premise, :invalid_big_area }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_area) { build :commercial_premise, :invalid_negative_area }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_area) { build :commercial_premise, :invalid_with_letters_area }
      include_examples 'invalid model'
    end
  end

  describe '#floor' do
    context 'when too big' do
      subject(:invalid_big_floor) { build :commercial_premise, :invalid_big_floor }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_floor) { build :commercial_premise, :invalid_negative_floor }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_floor) { build :commercial_premise, :invalid_with_letters_floor }
      include_examples 'invalid model'
    end
  end

  describe '#number_of_premises' do
    context 'when too big' do
      subject(:invalid_big_number_of_premises) { build :commercial_premise, :invalid_big_number_of_premises }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_number_of_premises) { build :commercial_premise, :invalid_negative_number_of_premises }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_number_of_premises) do
        build :commercial_premise, :invalid_with_letters_number_of_premises
      end
      include_examples 'invalid model'
    end
  end

  describe '#plot of_land' do
    context 'when too big' do
      subject(:invalid_big_plot_of_land) { build :commercial_premise, :invalid_big_plot_of_land }
      include_examples 'invalid model'
    end

    context 'when negative' do
      subject(:invalid_negative_plot_of_land) { build :commercial_premise, :invalid_negative_plot_of_land }
      include_examples 'invalid model'
    end

    context 'when with letters' do
      subject(:invalid_with_letters_plot_of_land) { build :commercial_premise, :invalid_with_letters_plot_of_land }
      include_examples 'invalid model'
    end
  end
end
