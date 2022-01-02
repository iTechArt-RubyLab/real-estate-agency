require 'rails_helper'

RSpec.describe 'renovations/index', type: :view do
  before(:each) do
    assign(:renovations, [
             Renovation.create!(
               name: 'Name'
             ),
             Renovation.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of renovations' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
