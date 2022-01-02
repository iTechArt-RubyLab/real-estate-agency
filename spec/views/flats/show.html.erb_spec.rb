require 'rails_helper'

RSpec.describe 'flats/show', type: :view do
  before(:each) do
    @flat = assign(:flat, Flat.create!(
                            rooms_count: 2,
                            floor: 3,
                            year_of_construction: 4,
                            celling_height: '9.99',
                            total_area: '9.99',
                            living_area: '9.99',
                            kitchen_area: '9.99',
                            renovation: nil,
                            wall_material: nil
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
