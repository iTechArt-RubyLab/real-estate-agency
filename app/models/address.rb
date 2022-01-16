# == Schema Information
#
# Table name: addresses
#
#  id          :bigint           not null, primary key
#  building    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  street_id   :bigint           not null
#
# Indexes
#
#  index_addresses_on_street_id  (street_id)
#
# Foreign Keys
#
#  fk_rails_...  (street_id => streets.id)
#
class Address < ApplicationRecord
  belongs_to :street, optional: true
  has_one :lot

  validates :building, numericality: { only_integer: true }, inclusion: { in: 1..300 }
  validates :description, length: { in: 3..500 }

  scope :with_street, ->(street_id) { where(street_id: street_id) }
  scope :with_building, ->(building) { where(building: building) }
end
