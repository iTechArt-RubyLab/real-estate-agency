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
end
