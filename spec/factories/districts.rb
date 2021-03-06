# == Schema Information
#
# Table name: districts
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :bigint           not null
#
# Indexes
#
#  index_districts_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#
FactoryBot.define do
  factory :district, class: District do
    transient do
      city { create :city }
    end
    name { Faker::Lorem.characters(number: 10, min_alpha: 10) }
    before :create do |district, evaluator|
      district.city = evaluator.city
    end

    trait :with_attributes_ids do
      city_id { city.id }
    end

    city_id { city.id }

    trait :invalid_long do
      name { Faker::Lorem.characters(number: 21, min_alpha: 21) }
    end

    trait :invalid_short do
      name { Faker::Lorem.characters(number: 1, min_alpha: 1) }
    end

    trait :invalid_with_numbers do
      name { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    end
  end
end
