class RenovationsController < ApplicationController
  before_action :set_renovation, only: %i[show edit update destroy]

  # GET /renovations or /renovations.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: RenovationDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /renovations/1 or /renovations/1.json
  def show; end

  # GET /renovations/new
  def new
    @renovation = Renovation.new
  end

  # GET /renovations/1/edit
  def edit; end

  # POST /renovations or /renovations.json
  def create
    @renovation = Renovation.new(renovation_params)

    respond_to do |format|
      if @renovation.save
        format.html { redirect_to renovation_url(@renovation), notice: 'Renovation was successfully created.' }
        format.json { render :show, status: :created, location: @renovation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @renovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renovations/1 or /renovations/1.json
  def update
    respond_to do |format|
      if @renovation.update(renovation_params)
        format.html { redirect_to renovation_url(@renovation), notice: 'Renovation was successfully updated.' }
        format.json { render :show, status: :ok, location: @renovation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @renovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renovations/1 or /renovations/1.json
  def destroy
    @renovation.destroy

    respond_to do |format|
      format.html { redirect_to renovations_url, notice: 'Renovation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_renovation
    @renovation = Renovation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def renovation_params
    params.require(:renovation).permit(:name)
  end
end
