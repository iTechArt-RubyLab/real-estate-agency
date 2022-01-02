require 'rails_helper'

RSpec.describe 'renovations/new', type: :view do
  before(:each) do
    assign(:renovation, Renovation.new(
                          name: 'MyString'
                        ))
  end

  it 'renders new renovation form' do
    render

    assert_select 'form[action=?][method=?]', renovations_path, 'post' do
      assert_select 'input[name=?]', 'renovation[name]'
    end
  end
end
