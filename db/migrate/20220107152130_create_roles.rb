class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :can_read_lot
      t.boolean :can_edit_lot
      t.boolean :can_asign
      t.boolean :can_read_dictionary
      t.boolean :can_edit_dictionary
      t.boolean :can_give_permission
      t.boolean :can_work_with_all_property_types
      t.boolean :can_create_role
      t.boolean :can_approve_realtor
      t.boolean :can_freeze_user

      t.timestamps
    end
  end
end
