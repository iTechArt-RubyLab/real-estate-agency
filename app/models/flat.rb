# == Schema Information
#
# Table name: flats
#
#  id                   :bigint           not null, primary key
#  celling_height       :decimal(, )
#  floor                :integer
#  kitchen_area         :decimal(, )
#  living_area          :decimal(, )
#  rooms_count          :integer
#  total_area           :decimal(, )
#  year_of_construction :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  renovation_id        :bigint           not null
#  wall_material_id     :bigint           not null
#
# Indexes
#
#  index_flats_on_renovation_id     (renovation_id)
#  index_flats_on_wall_material_id  (wall_material_id)
#
# Foreign Keys
#
#  fk_rails_...  (renovation_id => renovations.id)
#  fk_rails_...  (wall_material_id => wall_materials.id)
#
class Flat < ApplicationRecord
  belongs_to :renovation
  belongs_to :wall_material
  has_one :lot, as: :lotable

  validates :celling_height, inclusion: { in: 1.80..5.0 }
  validates :floor, numericality: { only_integer: true }, inclusion: { in: 1..34 }
  validates :kitchen_area, inclusion: { in: 2.0..100.0 }
  validates :living_area, inclusion: { in: 2.0..100.0 }
  validates :rooms_count, numericality: { only_integer: true }, inclusion: { in: 1..40 }
  validates :total_area, inclusion: { in: 2.0..1000.0 }
  validates :year_of_construction, numericality: { only_integer: true }, inclusion: { in: 1900..2022 }

  scope :with_celling_height, ->(celling_height) { where(celling_height: celling_height) }
  scope :with_floor, ->(floor) { where(floor: floor) }
  scope :with_kitchen_area, ->(kitchen_area) { where(kitchen_area: kitchen_area) }
  scope :with_living_area, ->(living_area) { where(living_area: living_area) }
  scope :with_rooms_count, ->(rooms_count) { where(rooms_count: rooms_count) }
  scope :with_total_area, ->(total_area) { where(total_area: total_area) }
  scope :with_year_of_construction, ->(year_of_construction) { where(year_of_construction: year_of_construction) }
  scope :with_renovation_id, ->(renovation_id) { where(renovation_id: renovation_id) }
  scope :with_wall_material_id, ->(wall_material_id) { where(wall_material_id: wall_material_id) }
end
