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
end
