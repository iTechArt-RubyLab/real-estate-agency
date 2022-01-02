require 'rails_helper'

RSpec.describe 'commercial_premises_kinds/show', type: :view do
  before(:each) do
    @commercial_premises_kind = assign(:commercial_premises_kind, CommercialPremisesKind.create!(
                                                                    name: 'Name'
                                                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
