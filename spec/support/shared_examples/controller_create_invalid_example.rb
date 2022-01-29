shared_examples 'POST /create with invalid params' do |model|
  let(:request_params) { Hash[model.to_s.underscore.to_sym, attributes] }

  it "creates a new #{model.to_s.underscore}" do
    expect do
      post send("#{model.to_s.underscore.pluralize}_url"), params: request_params
    end.to change(model, :count).by(0)
  end

  it "redirects to the created #{model.to_s.underscore}" do
    post send("#{model.to_s.underscore.pluralize}_url"), params: request_params
    expect(response).not_to be_successful
  end
end
