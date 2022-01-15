require 'rails_helper'

RSpec.describe 'deal_types/new', type: :view do
  before(:each) do
    assign(:deal_type, DealType.new(
                         name: 'MyString'
                       ))
  end

  it 'renders new deal_type form' do
    render

    assert_select 'form[action=?][method=?]', deal_types_path, 'post' do
      assert_select 'input[name=?]', 'deal_type[name]'
    end
  end
end
