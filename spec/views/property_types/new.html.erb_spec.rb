require 'rails_helper'

RSpec.describe "property_types/new", type: :view do
  before(:each) do
    assign(:property_type, PropertyType.new(
      name: "MyString"
    ))
  end

  it "renders new property_type form" do
    render

    assert_select "form[action=?][method=?]", property_types_path, "post" do

      assert_select "input[name=?]", "property_type[name]"
    end
  end
end
