require 'rails_helper'

RSpec.describe "property_types/edit", type: :view do
  before(:each) do
    @property_type = assign(:property_type, PropertyType.create!(
      name: "MyString"
    ))
  end

  it "renders the edit property_type form" do
    render

    assert_select "form[action=?][method=?]", property_type_path(@property_type), "post" do

      assert_select "input[name=?]", "property_type[name]"
    end
  end
end
