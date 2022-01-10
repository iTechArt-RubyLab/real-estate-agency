# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  name       :string
#  phone_code :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Country < ApplicationRecord
  has_many :client_profiles, dependent: :delete_all

  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }
end
