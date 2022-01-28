shared_examples 'simple CRUD' do |class_model_name, invalid_trait, create_trait|
  model_name = class_model_name.to_s.underscore.to_sym

  describe 'GET /index' do
    include_examples 'GET /index', class_model_name do
      let(:attributes) do
        attributes_for model_name
      end
    end
  end

  describe 'GET /show' do
    include_examples 'GET /show', class_model_name do
      let(:attributes) do
        attributes_for model_name
      end
    end
  end

  describe 'GET /new' do
    include_examples 'GET /new', class_model_name
  end

  describe 'GET /edit' do
    include_examples 'GET /edit', class_model_name do
      let(:attributes) do
        attributes_for model_name
      end
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      include_examples 'POST /create', class_model_name do
        let(:attributes) do
          attributes_for model_name, create_trait
        end
      end
    end

    context 'with invalid parameters' do
      include_examples 'POST /create with invalid params', class_model_name do
        let(:attributes) do
          attributes_for model_name, invalid_trait
        end
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      include_examples 'PATCH /update', class_model_name do
        let(:attributes) do
          attributes_for model_name
        end

        let(:new_attributes) do
          attributes_for model_name
        end
      end
    end

    context 'with invalid parameters' do
      include_examples 'PATCH /update with invalid params', class_model_name do
        let(:valid_attributes) do
          attributes_for model_name
        end

        let(:invalid_attributes) do
          attributes_for model_name, invalid_trait
        end
      end
    end
  end

  describe 'DELETE /destroy' do
    include_examples 'DELETE /destroy', class_model_name do
      let(:attributes) do
        attributes_for model_name
      end
    end
  end
end
