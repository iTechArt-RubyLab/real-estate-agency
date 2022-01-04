class CountrySideHouseKindsController < ApplicationController
  before_action :set_country_side_house_kind, only: %i[show edit update destroy]

  # GET /country_side_house_kinds or /country_side_house_kinds.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: CountrySideHouseKindDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /country_side_house_kinds/1 or /country_side_house_kinds/1.json
  def show; end

  # GET /country_side_house_kinds/new
  def new
    @country_side_house_kind = CountrySideHouseKind.new
  end

  # GET /country_side_house_kinds/1/edit
  def edit; end

  # POST /country_side_house_kinds or /country_side_house_kinds.json
  def create
    @country_side_house_kind = CountrySideHouseKind.new(country_side_house_kind_params)

    respond_to do |format|
      if @country_side_house_kind.save
        format.html do
          redirect_to country_side_house_kind_url(@country_side_house_kind),
                      notice: 'Country side house kind was successfully created.'
        end
        format.json { render :show, status: :created, location: @country_side_house_kind }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country_side_house_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_side_house_kinds/1 or /country_side_house_kinds/1.json
  def update
    respond_to do |format|
      if @country_side_house_kind.update(country_side_house_kind_params)
        format.html do
          redirect_to country_side_house_kind_url(@country_side_house_kind),
                      notice: 'Country side house kind was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @country_side_house_kind }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country_side_house_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_side_house_kinds/1 or /country_side_house_kinds/1.json
  def destroy
    @country_side_house_kind.destroy

    respond_to do |format|
      format.html do
        redirect_to country_side_house_kinds_url, notice: 'Country side house kind was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country_side_house_kind
    @country_side_house_kind = CountrySideHouseKind.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def country_side_house_kind_params
    params.require(:country_side_house_kind).permit(:name)
  end
end
