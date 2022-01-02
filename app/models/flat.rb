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
end
