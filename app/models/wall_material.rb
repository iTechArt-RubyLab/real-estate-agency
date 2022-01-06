# == Schema Information
#
# Table name: wall_materials
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WallMaterial < ApplicationRecord
  has_one :flat
  has_one :country_side_house

  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }

  scope :with_name, ->(name) { where(name: name) }
end