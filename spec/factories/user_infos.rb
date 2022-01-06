FactoryBot.define do
  factory :user_info do
    city { nil }
    first_name { 'MyString' }
    last_name { 'MyString' }
    second_name { 'MyString' }
    date_of_birth { '2022-01-06' }
    gender { 1 }
  end
end
