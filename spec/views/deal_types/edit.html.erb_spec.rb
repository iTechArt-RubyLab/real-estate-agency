require 'rails_helper'

RSpec.describe 'deal_types/edit', type: :view do
  before(:each) do
    @deal_type = assign(:deal_type, DealType.create!(
                                      name: 'MyString'
                                    ))
  end

  it 'renders the edit deal_type form' do
    render

    assert_select 'form[action=?][method=?]', deal_type_path(@deal_type), 'post' do
      assert_select 'input[name=?]', 'deal_type[name]'
    end
  end
end
