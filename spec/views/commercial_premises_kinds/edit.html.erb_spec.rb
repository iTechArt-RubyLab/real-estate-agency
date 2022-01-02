require 'rails_helper'

RSpec.describe 'commercial_premises_kinds/edit', type: :view do
  before(:each) do
    @commercial_premises_kind = assign(:commercial_premises_kind, CommercialPremisesKind.create!(
                                                                    name: 'MyString'
                                                                  ))
  end

  it 'renders the edit commercial_premises_kind form' do
    render

    assert_select 'form[action=?][method=?]', commercial_premises_kind_path(@commercial_premises_kind), 'post' do
      assert_select 'input[name=?]', 'commercial_premises_kind[name]'
    end
  end
end
