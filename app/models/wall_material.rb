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
end
