class CountrySideHousesController < ApplicationController
  before_action :set_country_side_house, only: %i[show edit update destroy]

  # GET /country_side_houses or /country_side_houses.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: CountrySideHouseDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /country_side_houses/1 or /country_side_houses/1.json
  def show; end

  # GET /country_side_houses/new
  def new
    @country_side_house = CountrySideHouse.new
  end

  # GET /country_side_houses/1/edit
  def edit; end

  # POST /country_side_houses or /country_side_houses.json
  def create
    @country_side_house = CountrySideHouse.new(country_side_house_params)

    respond_to do |format|
      if @country_side_house.save
        format.html do
          redirect_to country_side_house_url(@country_side_house),
                      notice: 'Country side house was successfully created.'
        end
        format.json { render :show, status: :created, location: @country_side_house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country_side_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_side_houses/1 or /country_side_houses/1.json
  def update
    respond_to do |format|
      if @country_side_house.update(country_side_house_params)
        format.html do
          redirect_to country_side_house_url(@country_side_house),
                      notice: 'Country side house was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @country_side_house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country_side_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_side_houses/1 or /country_side_houses/1.json
  def destroy
    @country_side_house.destroy

    respond_to do |format|
      format.html { redirect_to country_side_houses_url, notice: 'Country side house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country_side_house
    @country_side_house = CountrySideHouse.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def country_side_house_params
    params.require(:country_side_house).permit(:total_area, :land_area, :floors_count, :year_of_construction,
                                               :wall_material_id, :country_side_house_kind_id, :ready_state_id)
  end
end