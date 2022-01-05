# == Schema Information
#
# Table name: commercial_premises
#
#  id                          :bigint           not null, primary key
#  area                        :decimal(, )
#  floor                       :integer
#  number_of_premises          :integer
#  plot_of_land                :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  commercial_premises_kind_id :bigint           not null
#
# Indexes
#
#  index_commercial_premises_on_commercial_premises_kind_id  (commercial_premises_kind_id)
#
# Foreign Keys
#
#  fk_rails_...  (commercial_premises_kind_id => commercial_premises_kinds.id)
#
FactoryBot.define do
  factory :area, class: CommercialPremise do
    trait :valid do
      association :commercial_premises_kind
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_big do
      association :commercial_premises_kind
      area { Faker::Number.within(range: 1000.1..2000.0) }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_negative do
      association :commercial_premises_kind
      area { Faker::Number.negative }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_with_letters do
      association :commercial_premises_kind
      area { Faker::Movies::LordOfTheRings.character }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end
  end

  factory :floor, class: CommercialPremise do
    trait :valid do
      association :commercial_premises_kind
      floor { Faker::Number.within(range: 1..34) }
      area { Faker::Number.within(range: 0.1..1000.0) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_big do
      association :commercial_premises_kind
      floor { Faker::Number.within(range: 35..60) }
      area { Faker::Number.within(range: 0.1..1000.0) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_negative do
      association :commercial_premises_kind
      floor { Faker::Number.negative }
      area { Faker::Number.within(range: 0.1..1000.0) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_with_letters do
      association :commercial_premises_kind
      floor { Faker::Movies::LordOfTheRings.character }
      area { Faker::Number.within(range: 0.1..1000.0) }
      number_of_premises { Faker::Number.within(range: 1..100) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end
  end

  factory :number_of_premises, class: CommercialPremise do
    trait :valid do
      association :commercial_premises_kind
      number_of_premises { Faker::Number.within(range: 1..100) }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_big do
      association :commercial_premises_kind
      number_of_premises { Faker::Number.within(range: 101..200) }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_negative do
      association :commercial_premises_kind
      number_of_premises { Faker::Number.negative }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end

    trait :invalid_with_letters do
      association :commercial_premises_kind
      number_of_premises { Faker::Movies::LordOfTheRings.character }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      plot_of_land { Faker::Number.within(range: 1..1000) }
    end
  end

  factory :plot_of_land, class: CommercialPremise do
    trait :valid do
      association :commercial_premises_kind
      plot_of_land { Faker::Number.within(range: 1..1000) }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
    end

    trait :invalid_big do
      association :commercial_premises_kind
      plot_of_land { Faker::Number.within(range: 1001..2000) }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
    end

    trait :invalid_negative do
      association :commercial_premises_kind
      plot_of_land { Faker::Number.negative }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
    end

    trait :invalid_with_letters do
      association :commercial_premises_kind
      plot_of_land { Faker::Movies::LordOfTheRings.character }
      area { Faker::Number.within(range: 0.1..1000.0) }
      floor { Faker::Number.within(range: 1..34) }
      number_of_premises { Faker::Number.within(range: 1..100) }
    end
  end
end
