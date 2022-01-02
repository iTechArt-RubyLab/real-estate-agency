# == Schema Information
#
# Table name: addresses
#
#  id          :bigint           not null, primary key
#  building    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  street_id   :bigint           not null
#
# Indexes
#
#  index_addresses_on_street_id  (street_id)
#
# Foreign Keys
#
#  fk_rails_...  (street_id => streets.id)
#
FactoryBot.define do
  factory :building, class: Address do
    trait :valid do
      association :street
      building { Faker::Number.within(range: 1..300) }
      description { Faker::Lorem.sentence }
    end

    trait :invalid_big do
      association :street
      building { Faker::Number.within(range: 301..500) }
      description { Faker::Lorem.sentence }
    end

    trait :invalid_negative do
      association :street
      building { Faker::Number.negative }
      description { Faker::Lorem.sentence }
    end

    trait :invalid_with_letters do
      association :street
      building { Faker::Movies::LordOfTheRings.character }
      description { Faker::Lorem.sentence }
    end
  end

  factory :description, class: Address do
    trait :valid do
      association :street
      description { Faker::Lorem.sentence }
      building { Faker::Number.within(range: 1..300) }
    end

    trait :invalid_long do
      association :street
      description { Faker::Lorem.characters(number: 510) }
      building { Faker::Number.within(range: 1..300) }
    end

    trait :invalid_short do
      association :street
      description { Faker::Lorem.characters(number: 2) }
      building { Faker::Number.within(range: 1..300) }
    end
  end
end
