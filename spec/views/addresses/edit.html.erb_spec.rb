require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      building: 1,
      number_of_storeys: 1,
      street: nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[building]"

      assert_select "input[name=?]", "address[number_of_storeys]"

      assert_select "input[name=?]", "address[street_id]"
    end
  end
end
