# == Schema Information
#
# Table name: roles
#
#  id                               :bigint           not null, primary key
#  can_approve_realtor              :boolean
#  can_asign                        :boolean
#  can_create_lot                   :boolean
#  can_create_role                  :boolean
#  can_edit_dictionary              :boolean
#  can_edit_lot                     :boolean
#  can_freeze_user                  :boolean
#  can_give_permission              :boolean
#  can_read_dictionary              :boolean
#  can_read_lot                     :boolean
#  can_read_others_lots             :boolean
#  can_work_with_all_property_types :boolean
#  name                             :string
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
class Role < ApplicationRecord
  has_one :user, dependent: :nullify

  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }

  scope :with_name, ->(name) { where(name: name) }

  def self.admin
    find_or_create_by(name: 'Admin',
                      can_approve_realtor: true,
                      can_asign: true,
                      can_create_role: true,
                      can_read_others_lots: true,
                      can_edit_dictionary: true,
                      can_edit_lot: true,
                      can_freeze_user: true,
                      can_give_permission: true,
                      can_read_dictionary: true,
                      can_read_lot: true,
                      can_create_lot: true,
                      can_work_with_all_property_types: true)
  end

  def self.client
    find_or_create_by(name: 'Client',
                      can_approve_realtor: false,
                      can_asign: false,
                      can_create_role: false,
                      can_read_others_lots: false,
                      can_edit_dictionary: false,
                      can_edit_lot: false,
                      can_freeze_user: false,
                      can_give_permission: false,
                      can_read_dictionary: false,
                      can_read_lot: true,
                      can_create_lot: true,
                      can_work_with_all_property_types: false)
  end

  def self.realtor
    find_or_create_by(name: 'Realtor',
                      can_approve_realtor: false,
                      can_asign: false,
                      can_create_role: false,
                      can_read_others_lots: true,
                      can_edit_dictionary: false,
                      can_edit_lot: true,
                      can_freeze_user: true,
                      can_give_permission: false,
                      can_read_dictionary: true,
                      can_read_lot: true,
                      can_create_lot: true,
                      can_work_with_all_property_types: false)
  end
end
