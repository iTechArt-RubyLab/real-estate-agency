require 'rails_helper'

RSpec.describe "streets/new", type: :view do
  before(:each) do
    assign(:street, Street.new(
      name: "MyString",
      district: nil
    ))
  end

  it "renders new street form" do
    render

    assert_select "form[action=?][method=?]", streets_path, "post" do

      assert_select "input[name=?]", "street[name]"

      assert_select "input[name=?]", "street[district_id]"
    end
  end
end
