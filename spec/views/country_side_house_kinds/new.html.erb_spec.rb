require 'rails_helper'

RSpec.describe 'country_side_house_kinds/new', type: :view do
  before(:each) do
    assign(:country_side_house_kind, CountrySideHouseKind.new(
                                       name: 'MyString'
                                     ))
  end

  it 'renders new country_side_house_kind form' do
    render

    assert_select 'form[action=?][method=?]', country_side_house_kinds_path, 'post' do
      assert_select 'input[name=?]', 'country_side_house_kind[name]'
    end
  end
end
