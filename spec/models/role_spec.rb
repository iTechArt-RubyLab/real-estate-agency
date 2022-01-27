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
#  can_read_others_lots             :boolean
#  can_work_with_all_property_types :boolean
#  name                             :string
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
require 'rails_helper'

RSpec.describe Role, type: :model do
  context 'with valid attributes' do
    subject(:role) { create :role }
    include_examples 'valid model'
  end

  describe '#name' do
    context 'when too long' do
      subject(:invalid_long) { build :role, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :role, :invalid_short }
      include_examples 'invalid model'
    end

    context 'when with numbers' do
      subject(:invalid_with_numbers) { build :role, :invalid_with_numbers }
      include_examples 'invalid model'
    end
  end
end
