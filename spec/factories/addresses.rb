# == Schema Information
#
# Table name: addresses
#
#  id                :bigint           not null, primary key
#  building          :integer
#  number_of_storeys :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  street_id         :bigint           not null
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
      number_of_storeys { Faker::Number.within(range: 1..34) }
    end

    trait :invalid_big do
      association :street
      building { Faker::Number.within(range: 301..500) }
      number_of_storeys { Faker::Number.within(range: 1..34) }
    end
    
    trait :invalid_negative do
      association :street
      building { Faker::Number.negative  }
      number_of_storeys { Faker::Number.within(range: 1..34) }
    end
  
    trait :invalid_with_letters do
      association :street
      building { Faker::Movies::LordOfTheRings.character }
      number_of_storeys { Faker::Number.within(range: 1..34) }
    end
  end

  factory :number_of_storeys, class: Address do
    trait :valid do
      association :street
      number_of_storeys { Faker::Number.within(range: 1..34) }
      building { Faker::Number.within(range: 1..300) }
    end
  
    trait :invalid_big do
      association :street
      number_of_storeys { Faker::Number.within(range: 35..100) }
      building { Faker::Number.within(range: 1..300) }
    end
    
    trait :invalid_negative do
      association :street
      number_of_storeys { Faker::Number.negative }
      building { Faker::Number.within(range: 1..300) }
    end
  
    trait :invalid_with_letters do
      association :street
      number_of_storeys { Faker::Movies::LordOfTheRings.location }
      building { Faker::Number.within(range: 1..300) }
    end
  end
end
