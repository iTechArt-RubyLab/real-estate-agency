require 'rails_helper'

RSpec.describe 'commercial_premises/edit', type: :view do
  before(:each) do
    @commercial_premise = assign(:commercial_premise, CommercialPremise.create!(
                                                        area: '9.99',
                                                        floor: 1,
                                                        number_of_premises: 1,
                                                        plot_of_land: 1,
                                                        commercial_premises_kind: nil
                                                      ))
  end

  it 'renders the edit commercial_premise form' do
    render

    assert_select 'form[action=?][method=?]', commercial_premise_path(@commercial_premise), 'post' do
      assert_select 'input[name=?]', 'commercial_premise[area]'

      assert_select 'input[name=?]', 'commercial_premise[floor]'

      assert_select 'input[name=?]', 'commercial_premise[number_of_premises]'

      assert_select 'input[name=?]', 'commercial_premise[plot_of_land]'

      assert_select 'input[name=?]', 'commercial_premise[commercial_premises_kind_id]'
    end
  end
end
