shared_examples 'PATCH /update with invalid params' do |model|
  let(:request_params) { Hash[model.to_s.underscore.to_sym, invalid_attributes] }

  it "renders a unsuccessful response (i.e. to display the 'edit' template)" do
    model_name = model.to_s.underscore.to_sym
    instance = create(model_name, valid_attributes)
    patch send("#{model.to_s.underscore}_url", instance), params: request_params
    expect(response).not_to be_successful
  end
end
