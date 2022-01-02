require 'rails_helper'

RSpec.describe 'cities/show', type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
                            name: 'Name',
                            locality_size: 2,
                            region: 3,
                            description: 'MyText'
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
  end
end
