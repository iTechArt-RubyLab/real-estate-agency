json.extract! role, :id, :name, :can_read_lot, :can_edit_lot, :can_asign, :can_read_dictionary, :can_edit_dictionary,
              :can_give_permission, :can_work_with_all_property_types, :can_create_role, :can_approve_realtor, :can_freeze_user, :created_at, :updated_at
json.url role_url(role, format: :json)
