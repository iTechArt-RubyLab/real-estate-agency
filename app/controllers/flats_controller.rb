class FlatsController < ApplicationController
  include Authenticated
  before_action :set_flat, only: %i[show edit update destroy]

  # GET /flats or /flats.json
  def index
    @flats = Flat.all
    authorize @flats
    respond_to do |format|
      format.html
      format.json { render json: FlatDatatable.new(params, view_context: view_context, flats: @flats) }
    end
  end

  # GET /flats/1 or /flats/1.json
  def show
    authorize @flat
  end

  # GET /flats/new
  def new
    @flat = Flat.new
    authorize @flat
  end

  # GET /flats/1/edit
  def edit
    authorize @flat
  end

  # POST /flats or /flats.json
  def create
    @flat = Flat.new(flat_params)
    authorize @flat
    respond_to do |format|
      if @flat.save
        format.html { redirect_to flat_url(@flat), notice: 'Flat was successfully created.' }
        format.json { render :show, status: :created, location: @flat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flats/1 or /flats/1.json
  def update
    authorize @flat
    respond_to do |format|
      if @flat.update(flat_params)
        format.html { redirect_to flat_url(@flat), notice: 'Flat was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flats/1 or /flats/1.json
  def destroy
    @flat.destroy
    authorize @flat
    respond_to do |format|
      format.html { redirect_to flats_url, notice: 'Flat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_flat
    @flat = Flat.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def flat_params
    params.require(:flat).permit(:rooms_count, :floor, :year_of_construction, :celling_height, :total_area,
                                 :living_area, :kitchen_area, :renovation_id, :wall_material_id)
  end
end
