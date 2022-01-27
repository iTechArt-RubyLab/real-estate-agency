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
    phone_code { "+#{Faker::Lorem.characters(number: 3, min_numeric: 3)}" }

    trait :invalid_long_name do
      name { Faker::Lorem.characters(number: 31, min_alpha: 31) }
    end

    trait :invalid_short_name do
      name { Faker::Lorem.characters(number: 2, min_alpha: 2) }
    end

    trait :invalid_name_with_numbers do
      name { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    end

    trait :invalid_long_phone_code do
      phone_code { "+#{Faker::Lorem.characters(number: 16, min_numeric: 16)}" }
    end

    trait :invalid_short_phone_code do
      phone_code { '+' }
    end

    trait :invalid_phone_code_with_letters do
      phone_code { "+#{Faker::Lorem.characters(number: 3, min_alpha: 1)}" }
    end

    trait :invalid_phone_code_without_plus do
      phone_code { Faker::Lorem.characters(number: 3, min_numeric: 3) }
    end
  end
end
