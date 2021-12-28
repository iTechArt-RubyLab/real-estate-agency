# == Schema Information
#
# Table name: streets
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  district_id :bigint           not null
#
# Indexes
#
#  index_streets_on_district_id  (district_id)
#
# Foreign Keys
#
#  fk_rails_...  (district_id => districts.id)
#
require 'rails_helper'

RSpec.describe Street, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
