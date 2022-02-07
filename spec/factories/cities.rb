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
      name { Faker::Lorem.characters(number: 61, min_alpha: 61) }
    end

    trait :invalid_short do
      name { Faker::Lorem.characters(number: 1, min_alpha: 1) }
    end
  end
end
