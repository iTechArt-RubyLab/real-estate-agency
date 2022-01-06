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
  factory :street, class: Street do
    association :district
    name { Faker::Lorem.characters(number: 10, min_alpha: 10) }

    trait :invalid_long do
      name { Faker::Lorem.characters(number: 41, min_alpha: 41) }
    end

    trait :invalid_short do
      name { Faker::Lorem.characters(number: 1, min_alpha: 1) }
    end

    trait :invalid_with_numbers do
      name { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    end
  end
end
