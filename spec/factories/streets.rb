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
FactoryBot.define do
  factory :street do
    name { "MyString" }
    district { nil }
  end
end
