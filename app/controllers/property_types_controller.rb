class PropertyTypesController < ApplicationController
  include Authenticated
  before_action :set_property_type, only: %i[show edit update destroy]

  # GET /property_types or /property_types.json
  def index
    @property_types = PropertyType.all
    authorize @property_types
    respond_to do |format|
      format.html
      format.json { render json: PropertyTypeDatatable.new(params, view_context: view_context, property_types: @property_types) }
    end
  end

  # GET /property_types/1 or /property_types/1.json
  def show
    authorize @property_type
  end

  # GET /property_types/new
  def new
    @property_type = PropertyType.new
    authorize @property_type
  end

  # GET /property_types/1/edit
  def edit
    authorize @property_type
  end

  # POST /property_types or /property_types.json
  def create
    @property_type = PropertyType.new(property_type_params)
    authorize @property_type
    respond_to do |format|
      if @property_type.save
        format.html { redirect_to property_type_url(@property_type), notice: 'Property type was successfully created.' }
        format.json { render :show, status: :created, location: @property_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_types/1 or /property_types/1.json
  def update
    authorize @property_type
    respond_to do |format|
      if @property_type.update(property_type_params)
        format.html { redirect_to property_type_url(@property_type), notice: 'Property type was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_types/1 or /property_types/1.json
  def destroy
    @property_type.destroy
    authorize @property_type
    respond_to do |format|
      format.html { redirect_to property_types_url, notice: 'Property type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property_type
    @property_type = PropertyType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_type_params
    params.require(:property_type).permit(:name)
  end
end
