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
  factory :name, class: City do
    trait :valid do
      name { Faker::Address.city }
    end

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

  # factory :city do
  #   trait :brest_region do
  #     region { :brest }
  #   end

  #   trait :gomel_region do
  #     region { :gomel }
  #   end

  #   trait :town_locality_size do
  #     locality_size { :town }
  #   end

  #   trait :village_locality_size do
  #     locality_size { :village }
  #   end
  # end
end
