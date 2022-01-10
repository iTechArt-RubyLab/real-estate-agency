# == Schema Information
#
# Table name: roles
#
#  id                               :bigint           not null, primary key
#  can_approve_realtor              :boolean
#  can_asign                        :boolean
#  can_create_role                  :boolean
#  can_edit_dictionary              :boolean
#  can_edit_lot                     :boolean
#  can_freeze_user                  :boolean
#  can_give_permission              :boolean
#  can_read_dictionary              :boolean
#  can_read_lot                     :boolean
#  can_work_with_all_property_types :boolean
#  name                             :string
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
require 'rails_helper'

RSpec.describe Role, type: :model do
  describe '.role' do
    let(:role) { create :role }
    let(:invalid_long) { build :role, :invalid_long }
    let(:invalid_short) { build :role, :invalid_short }
    let(:invalid_with_numbers) { build :role, :invalid_with_numbers }

    context 'with valid attributes' do
      it { expect(role).to be_valid }
    end

    context 'when too long' do
      it { expect(invalid_long).not_to be_valid }
    end

    context 'when too short' do
      it { expect(invalid_short).not_to be_valid }
    end

    context 'when with numbers' do
      it { expect(invalid_with_numbers).not_to be_valid }
    end
  end
end
