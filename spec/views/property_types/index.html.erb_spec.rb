require 'rails_helper'

RSpec.describe 'property_types/index', type: :view do
  before(:each) do
    assign(:property_types, [
             PropertyType.create!(
               name: 'Name'
             ),
             PropertyType.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of property_types' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
