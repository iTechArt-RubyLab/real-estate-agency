# == Schema Information
#
# Table name: realtor_profiles
#
#  id                  :bigint           not null, primary key
#  employment_date     :date
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require 'rails_helper'

RSpec.describe RealtorProfile, type: :model do
  context 'with valid attributes' do
    subject(:realtor_profile) { create :realtor_profile }
    include_examples 'valid model'
  end

  describe '#registration_number' do
    context 'when too long' do
      subject(:invalid_long) { build :realtor_profile, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :realtor_profile, :invalid_short }
      include_examples 'invalid model'
    end
  end
end
