require 'rails_helper'

RSpec.describe 'wall_materials/index', type: :view do
  before(:each) do
    assign(:wall_materials, [
             WallMaterial.create!(
               name: 'Name'
             ),
             WallMaterial.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of wall_materials' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
