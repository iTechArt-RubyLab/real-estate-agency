# == Schema Information
#
# Table name: cities
#
#  id            :bigint           not null, primary key
#  description   :text
#  locality_size :integer
#  name          :string
#  region        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class City < ApplicationRecord
  has_many :districts, dependent: :delete_all
  enum locality_size: %i[no_information village town city]
  enum region: %i[brest gomel grodno minsk minsk_region mogilev vitebsk]

  validates :name, length: { in: 2..60 }

  scope :with_region, ->(region) { where(region: region) }
  scope :with_locality_size, ->(locality_size) { where(locality_size: locality_size) }
end
