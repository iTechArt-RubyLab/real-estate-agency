require 'rails_helper'

RSpec.describe 'country_side_house_kinds/edit', type: :view do
  before(:each) do
    @country_side_house_kind = assign(:country_side_house_kind, CountrySideHouseKind.create!(
                                                                  name: 'MyString'
                                                                ))
  end

  it 'renders the edit country_side_house_kind form' do
    render

    assert_select 'form[action=?][method=?]', country_side_house_kind_path(@country_side_house_kind), 'post' do
      assert_select 'input[name=?]', 'country_side_house_kind[name]'
    end
  end
end
