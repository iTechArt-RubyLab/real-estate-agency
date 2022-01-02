# == Schema Information
#
# Table name: renovations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :renovation do
    name { 'MyString' }
  end
end
