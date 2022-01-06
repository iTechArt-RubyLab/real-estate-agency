require 'rails_helper'

RSpec.describe 'user_infos/index', type: :view do
  before(:each) do
    assign(:user_infos, [
             UserInfo.create!(
               city: nil,
               first_name: 'First Name',
               last_name: 'Last Name',
               second_name: 'Second Name',
               gender: 2
             ),
             UserInfo.create!(
               city: nil,
               first_name: 'First Name',
               last_name: 'Last Name',
               second_name: 'Second Name',
               gender: 2
             )
           ])
  end

  it 'renders a list of user_infos' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Last Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Second Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
