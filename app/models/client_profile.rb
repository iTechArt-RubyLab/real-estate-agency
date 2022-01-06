class ClientProfile < ApplicationRecord
  belongs_to :country
  has_and_belongs_to_many :tags
  has_one :user_infos, as: :profilable
end
