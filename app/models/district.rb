# == Schema Information
#
# Table name: districts
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :bigint           not null
#
# Indexes
#
#  index_districts_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#
class District < ApplicationRecord
  belongs_to :city
  has_many :streets

  validates :name, length: { in: 2..20 }, format: { with: /\A[a-zA-Z]+\z/ }

  scope :with_city, ->(city_id) { where(city_id: city_id) }
end
