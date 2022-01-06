class UserInfo < ApplicationRecord
  belongs_to :city
  belongs_to :profilable, polymorphic: true
end
