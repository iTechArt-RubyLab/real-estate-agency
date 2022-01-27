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
  context 'with valid attributes' do
    subject(:client_profile) { create :client_profile }
    include_examples 'valid model'
  end

  describe '#description' do
    context 'when too long' do
      subject(:invalid_long) { build :client_profile, :invalid_long }
      include_examples 'invalid model'
    end

    context 'when too short' do
      subject(:invalid_short) { build :client_profile, :invalid_short }
      include_examples 'invalid model'
    end
  end
end
