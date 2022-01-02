require 'rails_helper'

RSpec.describe 'commercial_premises_kinds/new', type: :view do
  before(:each) do
    assign(:commercial_premises_kind, CommercialPremisesKind.new(
                                        name: 'MyString'
                                      ))
  end

  it 'renders new commercial_premises_kind form' do
    render

    assert_select 'form[action=?][method=?]', commercial_premises_kinds_path, 'post' do
      assert_select 'input[name=?]', 'commercial_premises_kind[name]'
    end
  end
end
