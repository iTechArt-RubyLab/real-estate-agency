# == Schema Information
#
# Table name: client_profiles
#
#  id           :bigint           not null, primary key
#  description  :text
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_id   :bigint
#
# Indexes
#
#  index_client_profiles_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
require 'rails_helper'

RSpec.describe ClientProfile, type: :model do
  describe '.client_profile' do
    let(:client_profile) { create :client_profile }

    context 'with valid attributes' do
      it { expect(client_profile).to be_valid }
    end
  end

  describe '#description' do
    let(:invalid_long_description) { build :client_profile, :invalid_long_description }
    let(:invalid_short_description) { build :client_profile, :invalid_short_description }

    context 'when too long' do
      it { expect(invalid_long_description).not_to be_valid }
    end

    context 'when too short' do
      it { expect(invalid_short_description).not_to be_valid }
    end
  end
end
