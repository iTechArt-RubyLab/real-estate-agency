require 'rails_helper'

RSpec.describe 'cities/edit', type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
                            name: 'MyString',
                            locality_size: 1,
                            region: 1,
                            description: 'MyText'
                          ))
  end

  it 'renders the edit city form' do
    render

    assert_select 'form[action=?][method=?]', city_path(@city), 'post' do
      assert_select 'input[name=?]', 'city[name]'

      assert_select 'input[name=?]', 'city[locality_size]'

      assert_select 'input[name=?]', 'city[region]'

      assert_select 'textarea[name=?]', 'city[description]'
    end
  end
end
