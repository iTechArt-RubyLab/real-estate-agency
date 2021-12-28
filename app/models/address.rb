# == Schema Information
#
# Table name: addresses
#
#  id                :bigint           not null, primary key
#  building          :integer
#  number_of_storeys :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  street_id         :bigint           not null
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

  validates :building, numericality: { only_integer: true }, inclusion: { in: 1..300 }
  validates :number_of_storeys, numericality: { only_integer: true }, inclusion: { in: 1..34 }

  scope :with_street, ->(street_id) { where(street_id: street_id) }
  scope :with_building, ->(building) { where(building: building) }
  scope :with_number_of_storeys, ->(number_of_storeys) { where(number_of_storeys: number_of_storeys) }
end
