shared_examples 'PATCH /update' do |model|
  let(:request_params) { Hash[model.to_s.underscore.to_sym, new_attributes] }

  it "updates the requested #{model.to_s.underscore}" do
    model_name = model.to_s.underscore.to_sym
    instance = create(model_name, attributes)
    patch send("#{model.to_s.underscore}_url", instance), params: request_params
    instance.reload
    attributes_for :commercial_premises_kind
  end

  it "redirects to the #{model.to_s.underscore}" do
    model_name = model.to_s.underscore.to_sym
    instance = create(model_name, attributes)
    patch send("#{model.to_s.underscore}_url", instance), params: request_params
    instance.reload
    expect(response).to redirect_to(send("#{model.to_s.underscore}_url", instance))
  end
end
