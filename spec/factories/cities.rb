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
  factory :city, class: City do
    name { Faker::Address.city }

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
