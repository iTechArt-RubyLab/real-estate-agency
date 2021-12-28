require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      building: 1,
      number_of_storeys: 1,
      street: nil
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[building]"

      assert_select "input[name=?]", "address[number_of_storeys]"

      assert_select "input[name=?]", "address[street_id]"
    end
  end
end
