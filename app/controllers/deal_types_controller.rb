class DealTypesController < ApplicationController
  before_action :set_deal_type, only: %i[show edit update destroy]

  # GET /deal_types or /deal_types.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: DealTypeDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /deal_types/1 or /deal_types/1.json
  def show; end

  # GET /deal_types/new
  def new
    @deal_type = DealType.new
  end

  # GET /deal_types/1/edit
  def edit; end

  # POST /deal_types or /deal_types.json
  def create
    @deal_type = DealType.new(deal_type_params)

    respond_to do |format|
      if @deal_type.save
        format.html { redirect_to deal_type_url(@deal_type), notice: 'Deal type was successfully created.' }
        format.json { render :show, status: :created, location: @deal_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deal_types/1 or /deal_types/1.json
  def update
    respond_to do |format|
      if @deal_type.update(deal_type_params)
        format.html { redirect_to deal_type_url(@deal_type), notice: 'Deal type was successfully updated.' }
        format.json { render :show, status: :ok, location: @deal_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_types/1 or /deal_types/1.json
  def destroy
    @deal_type.destroy

    respond_to do |format|
      format.html { redirect_to deal_types_url, notice: 'Deal type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_deal_type
    @deal_type = DealType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def deal_type_params
    params.require(:deal_type).permit(:name)
  end
end
