# == Schema Information
#
# Table name: country_side_houses
#
#  id                         :bigint           not null, primary key
#  floors_count               :integer
#  land_area                  :decimal(, )
#  total_area                 :decimal(, )
#  year_of_construction       :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  country_side_house_kind_id :bigint           not null
#  ready_state_id             :bigint           not null
#  wall_material_id           :bigint           not null
#
# Indexes
#
#  index_country_side_houses_on_country_side_house_kind_id  (country_side_house_kind_id)
#  index_country_side_houses_on_ready_state_id              (ready_state_id)
#  index_country_side_houses_on_wall_material_id            (wall_material_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_side_house_kind_id => country_side_house_kinds.id)
#  fk_rails_...  (ready_state_id => ready_states.id)
#  fk_rails_...  (wall_material_id => wall_materials.id)
#
class CountrySideHouse < ApplicationRecord
  belongs_to :wall_material
  belongs_to :country_side_house_kind
  belongs_to :ready_state
  has_one :lot, as: :lotable
  accepts_nested_attributes_for :lot
  delegate :title, :description, :price, to: :lot

  validates :floors_count, numericality: { only_integer: true }, inclusion: { in: 1..10 }
  validates :land_area, inclusion: { in: 0.1..1000.0 }
  validates :total_area, inclusion: { in: 0.1..1000.0 }
  validates :year_of_construction, numericality: { only_integer: true }, inclusion: { in: 1900..2022 }

  scope :with_floors_count, ->(floors_count) { where(floors_count: floors_count) }
  scope :with_land_area, ->(land_area) { where(land_area: land_area) }
  scope :with_total_area, ->(total_area) { where(total_area: total_area) }
  scope :with_year_of_construction, ->(year_of_construction) { where(year_of_construction: year_of_construction) }
  scope :with_country_side_house_kind_id, lambda { |country_side_house_kind_id|
                                            where(country_side_house_kind_id: country_side_house_kind_id)
                                          }
  scope :with_ready_state_id, ->(ready_state_id) { where(ready_state_id: ready_state_id) }
  scope :with_wall_material_id, ->(wall_material_id) { where(wall_material_id: wall_material_id) }
end
