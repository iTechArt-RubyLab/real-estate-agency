RSpec.shared_examples 'attribute length' do |attribute_name, model, invalid_long_model, invalid_short_model|
  context 'with valid attributes' do
    it { expect(model).to be_valid }
  end

  context "when too long #{attribute_name}" do
    it { expect(invalid_long_model).to be_valid }
  end

  context "when too short #{attribute_name}" do
    it { expect(invalid_short_model).to be_valid }
  end
end
