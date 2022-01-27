# == Schema Information
#
# Table name: realtor_profiles
#
#  id                  :bigint           not null, primary key
#  employment_date     :date
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
FactoryBot.define do
  factory :realtor_profile, class: RealtorProfile do
    registration_number { Faker::Lorem.characters(number: 8) }
    employment_date { Faker::Date.between(from: '2020-09-23', to: '2020-09-25') }

    trait :invalid_long do
      registration_number { Faker::Lorem.characters(number: 10) }
    end

    trait :invalid_short do
      registration_number { Faker::Lorem.characters(number: 3) }
    end
  end
end
