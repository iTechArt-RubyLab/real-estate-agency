require 'rails_helper'

RSpec.describe 'country_side_house_kinds/index', type: :view do
  before(:each) do
    assign(:country_side_house_kinds, [
             CountrySideHouseKind.create!(
               name: 'Name'
             ),
             CountrySideHouseKind.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of country_side_house_kinds' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
