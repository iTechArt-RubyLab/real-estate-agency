require 'rails_helper'

RSpec.describe 'commercial_premises/show', type: :view do
  before(:each) do
    @commercial_premise = assign(:commercial_premise, CommercialPremise.create!(
                                                        area: '9.99',
                                                        floor: 2,
                                                        number_of_premises: 3,
                                                        plot_of_land: 4,
                                                        commercial_premises_kind: nil
                                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
