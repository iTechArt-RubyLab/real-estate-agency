class CountrySideHousesController < ApplicationController
  include Authenticated
  before_action :set_country_side_house, only: %i[show edit update destroy remove_from_work publish complete return_to_publish]

  # GET /country_side_houses or /country_side_houses.json
  def index
    @country_side_houses = CountrySideHouses::GetInteractor.new.call
    authorize @country_side_houses
    respond_to do |format|
      format.html
      format.json { render json: CountrySideHouseDatatable.new(params, view_context: view_context, country_side_houses: @country_side_houses) }
    end
  end

  # GET /country_side_houses/1 or /country_side_houses/1.json
  def show
    authorize @country_side_house
  end

  # GET /country_side_houses/new
  def new
    @country_side_house = CountrySideHouse.new
    @country_side_house.build_lot
    @country_side_house.lot.build_address
    authorize @country_side_house
  end

  # GET /country_side_houses/1/edit
  def edit
    authorize @country_side_house
  end

  # POST /country_side_houses or /country_side_houses.json
  def create
    @country_side_house = CountrySideHouse.new(country_side_house_params)
    authorize @country_side_house
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
    authorize @country_side_house
    respond_to do |format|
      if @country_side_house.update!(country_side_house_params)
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
    authorize @country_side_house
    respond_to do |format|
      format.html { redirect_to country_side_houses_url, notice: 'Country side house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_from_work
    authorize @country_side_house
    @country_side_house.lot.remove_from_work
    @country_side_house.save
  end

  def publish
    authorize @country_side_house
    @country_side_house.lot.publish
    @country_side_house.save
  end

  def complete
    authorize @country_side_house
    @country_side_house.lot.complete
    @country_side_house.save
  end

  def return_to_publish
    authorize @country_side_house
    @country_side_house.lot.return_to_publish
    @country_side_house.save
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country_side_house
    @country_side_house = CountrySideHouse.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def country_side_house_params
    params.require(:country_side_house).permit(:total_area, :land_area, :floors_count, :year_of_construction,
                                               :wall_material_id, :country_side_house_kind_id, :ready_state_id,
                                               lot_attributes: [:id, :title, :description, :price, :client_id, :deal_type_id, { address_attributes: %i[id building description street_id] }, { images: [] }])
  end
end
