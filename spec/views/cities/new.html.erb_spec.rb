require 'rails_helper'

RSpec.describe 'cities/new', type: :view do
  before(:each) do
    assign(:city, City.new(
                    name: 'MyString',
                    locality_size: 1,
                    region: 1,
                    description: 'MyText'
                  ))
  end

  it 'renders new city form' do
    render

    assert_select 'form[action=?][method=?]', cities_path, 'post' do
      assert_select 'input[name=?]', 'city[name]'

      assert_select 'input[name=?]', 'city[locality_size]'

      assert_select 'input[name=?]', 'city[region]'

      assert_select 'textarea[name=?]', 'city[description]'
    end
  end
end
