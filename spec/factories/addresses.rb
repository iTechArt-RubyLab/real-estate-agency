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
  factory :addresses, class: Address do
    association :street
    building { Faker::Number.within(range: 1..300) }
    description { Faker::Lorem.sentence }

    trait :invalid_big_building do
      building { Faker::Number.within(range: 301..500) }
    end

    trait :invalid_negative_building do
      building { Faker::Number.negative }
    end

    trait :invalid_with_letters_building do
      building { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_long_description do
      description { Faker::Lorem.characters(number: 510) }
    end

    trait :invalid_short_description do
      description { Faker::Lorem.characters(number: 2) }
    end
  end
end
