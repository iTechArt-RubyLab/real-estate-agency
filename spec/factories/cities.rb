# == Schema Information
#
# Table name: cities
#
#  id            :bigint           not null, primary key
#  description   :text
#  locality_size :integer
#  name          :string
#  region        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :city do
    name { Faker::Lorem.characters(number: 10, min_alpha: 10) }
    trait :brest_region do
      region { :brest }
    end

    trait :gomel_region do
      region { :gomel }
    end

    trait :town_locality_size do
      locality_size { :town }
    end

    trait :city_locality_size do
      locality_size { :city }
    end
  end

  factory :invalid_long_city do
    name { Faker::Lorem.characters(number: 21, min_alpha: 21) }
  end
  
  factory :invalid_short_city do
    name { Faker::Lorem.characters(number: 1, min_alpha: 1) }
  end

  factory :invalid_city_with_numbers do
    name { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
  end

end
