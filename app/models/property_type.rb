# == Schema Information
#
# Table name: property_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PropertyType < ApplicationRecord
  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }
end
