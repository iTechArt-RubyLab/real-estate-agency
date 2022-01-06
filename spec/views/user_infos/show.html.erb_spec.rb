require 'rails_helper'

RSpec.describe 'user_infos/show', type: :view do
  before(:each) do
    @user_info = assign(:user_info, UserInfo.create!(
                                      city: nil,
                                      first_name: 'First Name',
                                      last_name: 'Last Name',
                                      second_name: 'Second Name',
                                      gender: 2
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/2/)
  end
end
