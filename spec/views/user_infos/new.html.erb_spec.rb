require 'rails_helper'

RSpec.describe 'user_infos/new', type: :view do
  before(:each) do
    assign(:user_info, UserInfo.new(
                         city: nil,
                         first_name: 'MyString',
                         last_name: 'MyString',
                         second_name: 'MyString',
                         gender: 1
                       ))
  end

  it 'renders new user_info form' do
    render

    assert_select 'form[action=?][method=?]', user_infos_path, 'post' do
      assert_select 'input[name=?]', 'user_info[city_id]'

      assert_select 'input[name=?]', 'user_info[first_name]'

      assert_select 'input[name=?]', 'user_info[last_name]'

      assert_select 'input[name=?]', 'user_info[second_name]'

      assert_select 'input[name=?]', 'user_info[gender]'
    end
  end
end
