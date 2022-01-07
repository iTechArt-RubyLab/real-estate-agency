require 'rails_helper'

RSpec.describe 'roles/show', type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
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
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
