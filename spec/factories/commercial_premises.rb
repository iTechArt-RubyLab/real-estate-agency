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
  factory :commercial_premise, class: CommercialPremise do
    association :commercial_premises_kind
    area { Faker::Number.within(range: 0.1..1000.0) }
    floor { Faker::Number.within(range: 1..34) }
    number_of_premises { Faker::Number.within(range: 1..100) }
    plot_of_land { Faker::Number.within(range: 1..1000) }

    trait :invalid_big_area do
      area { Faker::Number.within(range: 1000.1..2000.0) }
    end

    trait :invalid_negative_area do
      area { Faker::Number.negative }
    end

    trait :invalid_with_letters_area do
      area { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_floor do
      floor { Faker::Number.within(range: 35..60) }
    end

    trait :invalid_negative_floor do
      floor { Faker::Number.negative }
    end

    trait :invalid_with_letters_floor do
      floor { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_number_of_premises do
      number_of_premises { Faker::Number.within(range: 101..200) }
    end

    trait :invalid_negative_number_of_premises do
      number_of_premises { Faker::Number.negative }
    end

    trait :invalid_with_letters_number_of_premises do
      number_of_premises { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_plot_of_land do
      plot_of_land { Faker::Number.within(range: 1001..2000) }
    end

    trait :invalid_negative_plot_of_land do
      plot_of_land { Faker::Number.negative }
    end

    trait :invalid_with_letters_plot_of_land do
      plot_of_land { Faker::Movies::LordOfTheRings.character }
    end
  end
end
