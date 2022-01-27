# == Schema Information
#
# Table name: lots
#
#  id           :bigint           not null, primary key
#  description  :text
#  lotable_type :string
#  price        :decimal(, )
#  state        :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  address_id   :bigint           not null
#  asignee_id   :bigint
#  asigner_id   :bigint
#  client_id    :bigint
#  deal_type_id :bigint           not null
#  lotable_id   :bigint
#
# Indexes
#
#  index_lots_on_address_id    (address_id)
#  index_lots_on_asignee_id    (asignee_id)
#  index_lots_on_asigner_id    (asigner_id)
#  index_lots_on_client_id     (client_id)
#  index_lots_on_deal_type_id  (deal_type_id)
#  index_lots_on_lotable       (lotable_type,lotable_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_id => addresses.id)
#  fk_rails_...  (asignee_id => users.id)
#  fk_rails_...  (asigner_id => users.id)
#  fk_rails_...  (client_id => users.id)
#  fk_rails_...  (deal_type_id => deal_types.id)
#
FactoryBot.define do
  factory :lot, class: Lot do
    association :address
    association :deal_type
    title { Faker::Lorem.characters(number: 20, min_alpha: 19) }
    description { Faker::Lorem.characters(number: 30, min_alpha: 30) }
    price { Faker::Number.within(range: 0.1..10_000_000.0) }

    trait :invalid_long_title do
      title { Faker::Lorem.characters(number: 101) }
    end

    trait :invalid_short_title do
      title { Faker::Lorem.characters(number: 3) }
    end

    trait :invalid_long_description do
      description { Faker::Lorem.characters(number: 501) }
    end

    trait :invalid_short_description do
      description { Faker::Lorem.characters(number: 3) }
    end

    trait :invalid_big_price do
      price { Faker::Number.within(range: 10_000_000.1..100_000_000.1) }
    end

    trait :invalid_negative_price do
      price { Faker::Number.negative }
    end

    trait :invalid_with_letters_price do
      price { Faker::Movies::LordOfTheRings.character }
    end
  end
end
