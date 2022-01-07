require 'rails_helper'

RSpec.describe 'roles/index', type: :view do
  before(:each) do
    assign(:roles, [
             Role.create!(
               name: 'Name',
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
             ),
             Role.create!(
               name: 'Name',
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
             )
           ])
  end

  it 'renders a list of roles' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
