require 'rails_helper'

RSpec.describe 'commercial_premises/new', type: :view do
  before(:each) do
    assign(:commercial_premise, CommercialPremise.new(
                                  area: '9.99',
                                  floor: 1,
                                  number_of_premises: 1,
                                  plot_of_land: 1,
                                  commercial_premises_kind: nil
                                ))
  end

  it 'renders new commercial_premise form' do
    render

    assert_select 'form[action=?][method=?]', commercial_premises_path, 'post' do
      assert_select 'input[name=?]', 'commercial_premise[area]'

      assert_select 'input[name=?]', 'commercial_premise[floor]'

      assert_select 'input[name=?]', 'commercial_premise[number_of_premises]'

      assert_select 'input[name=?]', 'commercial_premise[plot_of_land]'

      assert_select 'input[name=?]', 'commercial_premise[commercial_premises_kind_id]'
    end
  end
end
