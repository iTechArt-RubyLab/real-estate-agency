# == Schema Information
#
# Table name: client_profiles
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :bigint
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
  pending "add some examples to (or delete) #{__FILE__}"
end
