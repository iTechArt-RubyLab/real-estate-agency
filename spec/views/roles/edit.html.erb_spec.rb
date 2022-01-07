require 'rails_helper'

RSpec.describe 'roles/edit', type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
                            name: 'MyString',
                            can_read_lot: false,
                            can_edit_lot: false,
                            can_asign: false,
                            can_read_dictionary: false,
                            can_edit_dictionary: false,
                            can_give_permission: false,
                            can_work_with_all_property_types: false,
                            can_create_role: false,
                            can_approve_realtor: false,
                            can_freeze_user: false
                          ))
  end

  it 'renders the edit role form' do
    render

    assert_select 'form[action=?][method=?]', role_path(@role), 'post' do
      assert_select 'input[name=?]', 'role[name]'

      assert_select 'input[name=?]', 'role[can_read_lot]'

      assert_select 'input[name=?]', 'role[can_edit_lot]'

      assert_select 'input[name=?]', 'role[can_asign]'

      assert_select 'input[name=?]', 'role[can_read_dictionary]'

      assert_select 'input[name=?]', 'role[can_edit_dictionary]'

      assert_select 'input[name=?]', 'role[can_give_permission]'

      assert_select 'input[name=?]', 'role[can_work_with_all_property_types]'

      assert_select 'input[name=?]', 'role[can_create_role]'

      assert_select 'input[name=?]', 'role[can_approve_realtor]'

      assert_select 'input[name=?]', 'role[can_freeze_user]'
    end
  end
end
