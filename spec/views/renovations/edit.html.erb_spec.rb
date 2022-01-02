require 'rails_helper'

RSpec.describe 'renovations/edit', type: :view do
  before(:each) do
    @renovation = assign(:renovation, Renovation.create!(
                                        name: 'MyString'
                                      ))
  end

  it 'renders the edit renovation form' do
    render

    assert_select 'form[action=?][method=?]', renovation_path(@renovation), 'post' do
      assert_select 'input[name=?]', 'renovation[name]'
    end
  end
end
