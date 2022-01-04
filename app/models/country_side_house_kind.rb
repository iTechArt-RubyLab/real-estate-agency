# == Schema Information
#
# Table name: country_side_house_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CountrySideHouseKind < ApplicationRecord
  has_one :country_side_house

  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }

  scope :with_name, ->(name) { where(name: name) }
end
