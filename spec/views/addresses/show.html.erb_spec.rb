require 'rails_helper'

RSpec.describe 'addresses/show', type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
                                  building: 2,
                                  number_of_storeys: 3,
                                  street: nil
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
