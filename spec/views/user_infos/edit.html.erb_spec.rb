require 'rails_helper'

RSpec.describe 'user_infos/edit', type: :view do
  before(:each) do
    @user_info = assign(:user_info, UserInfo.create!(
                                      city: nil,
                                      first_name: 'MyString',
                                      last_name: 'MyString',
                                      second_name: 'MyString',
                                      gender: 1
                                    ))
  end

  it 'renders the edit user_info form' do
    render

    assert_select 'form[action=?][method=?]', user_info_path(@user_info), 'post' do
      assert_select 'input[name=?]', 'user_info[city_id]'

      assert_select 'input[name=?]', 'user_info[first_name]'

      assert_select 'input[name=?]', 'user_info[last_name]'

      assert_select 'input[name=?]', 'user_info[second_name]'

      assert_select 'input[name=?]', 'user_info[gender]'
    end
  end
end
