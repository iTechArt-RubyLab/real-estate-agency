# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  date_of_birth          :date
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  first_name             :string
#  gender                 :integer
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  profilable_type        :string
#  provider               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  second_name            :string
#  sign_in_count          :integer          default(0), not null
#  uid                    :string
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  profilable_id          :bigint
#  role_id                :bigint
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_profilable            (profilable_type,profilable_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_role_id               (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (role_id => roles.id)
#
class User < ApplicationRecord
  has_one_attached :avatar, dependent: :destroy
  has_many :changes_histories, dependent: :delete_all
  has_many :asigner_lot, foreign_key: :asigner_id, class_name: 'Lot', dependent: :nullify
  has_many :asignee_lot, foreign_key: :asignee_id, class_name: 'Lot', dependent: :nullify
  has_many :client_lot, foreign_key: :client_id, class_name: 'Lot', dependent: :nullify
  belongs_to :role, optional: true
  enum gender: %i[male female]
  belongs_to :profilable, polymorphic: true, optional: true
  accepts_nested_attributes_for :profilable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, :lockable

  after_commit :default_avatar, on: %i[create update]

  validates :first_name, length: { in: 2..30 }, format: { with: /\A[a-zA-Z]+\z/ }
  validates :second_name, length: { in: 2..30 }, format: { with: /\A[a-zA-Z]+\z/ }
  validates :last_name, length: { in: 2..30 }, format: { with: /\A[a-zA-Z]+\z/ }

  scope :with_clients, -> { where(profilable_type: 'ClientProfile') }
  scope :with_realtors, -> { where(profilable_type: 'RealtorProfile') }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.name
      user.role = Role.client
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def avatar_miniature
    if avatar.attached?
      avatar.variant(resize: '150x150!').processed
    else
      '/default_avatar.jpg'
    end
  end

  private

  def default_avatar
    unless avatar.attached?
      avatar.attach(
        io: File.open(
          Rails.root.join(
            'app', 'assets', 'images', 'default_avatar.jpg'
          )
        ), filename: 'default_avatar.jpg',
        content_type: 'image/png'
      )
    end
  end
end
