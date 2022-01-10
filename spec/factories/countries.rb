# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  name       :string
#  phone_code :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :country, class: Country do
    name { Faker::Address.country }

    trait :invalid_long do
      name { Faker::Lorem.characters(number: 31, min_alpha: 31) }
    end

    trait :invalid_short do
      name { Faker::Lorem.characters(number: 2, min_alpha: 2) }
    end

    trait :invalid_with_numbers do
      name { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    end
  end
end
