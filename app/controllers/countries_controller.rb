class CountriesController < ApplicationController
  include Authenticated
  before_action :set_country, only: %i[show edit update destroy]

  # GET /countries or /countries.json
  def index
    @countries = Country.all
    authorize @countries
    respond_to do |format|
      format.html
      format.json { render json: CountryDatatable.new(params, view_context: view_context, countries: @countries) }
    end
  end

  # GET /countries/1 or /countries/1.json
  def show
    authorize @country
  end

  # GET /countries/new
  def new
    @country = Country.new
    authorize @country
  end

  # GET /countries/1/edit
  def edit; end

  # POST /countries or /countries.json
  def create
    @country = Country.new(country_params)
    authorize @country
    respond_to do |format|
      if @country.save
        format.html { redirect_to country_url(@country), notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1 or /countries/1.json
  def update
    authorize @country
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to country_url(@country), notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1 or /countries/1.json
  def destroy
    @country.destroy
    authorize @country
    respond_to do |format|
      format.html { redirect_to countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = Country.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def country_params
    params.require(:country).permit(:name, :phone_code)
  end
end
