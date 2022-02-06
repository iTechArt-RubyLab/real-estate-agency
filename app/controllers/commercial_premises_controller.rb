class CommercialPremisesController < ApplicationController
  include Authenticated
  before_action :set_commercial_premise, only: %i[show edit update destroy remove_from_work publish complete return_to_publish]

  # GET /commercial_premises or /commercial_premises.json
  def index
    @commercial_premises = CommercialPremises::GetInteractor.new.call
    authorize @commercial_premises
    respond_to do |format|
      format.html
      format.json { render json: CommercialPremiseDatatable.new(params, view_context: view_context, commercial_premises: @commercial_premises) }
    end
  end

  # GET /commercial_premises/1 or /commercial_premises/1.json
  def show
    authorize @commercial_premise
  end

  # GET /commercial_premises/new
  def new
    @commercial_premise = CommercialPremise.new
    @commercial_premise.build_lot
    @commercial_premise.lot.build_address
    authorize @commercial_premise
  end

  # GET /commercial_premises/1/edit
  def edit
    authorize @commercial_premise
  end

  # POST /commercial_premises or /commercial_premises.json
  def create
    @commercial_premise = CommercialPremise.new(commercial_premise_params)
    authorize @commercial_premise
    respond_to do |format|
      if @commercial_premise.save
        format.html do
          redirect_to commercial_premise_url(@commercial_premise),
                      notice: 'Commercial premise was successfully created.'
        end
        format.json { render :show, status: :created, location: @commercial_premise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commercial_premise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercial_premises/1 or /commercial_premises/1.json
  def update
    authorize @commercial_premise
    respond_to do |format|
      if @commercial_premise.update(commercial_premise_params)
        @commercial_premise.lot.asigner = current_user
        @commercial_premise.save
        format.html do
          redirect_to commercial_premise_url(@commercial_premise),
                      notice: 'Commercial premise was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @commercial_premise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commercial_premise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercial_premises/1 or /commercial_premises/1.json
  def destroy
    @commercial_premise.destroy
    authorize @commercial_premise
    respond_to do |format|
      format.html { redirect_to commercial_premises_url, notice: 'Commercial premise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_from_work
    authorize @commercial_premise
    @commercial_premise.lot.remove_from_work
    @commercial_premise.save
  end

  def publish
    authorize @commercial_premise
    @commercial_premise.lot.publish
    @commercial_premise.save
  end

  def complete
    authorize @commercial_premise
    @commercial_premise.lot.complete
    @commercial_premise.save
  end

  def return_to_publish
    authorize @commercial_premise
    @commercial_premise.lot.return_to_publish
    @commercial_premise.save
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commercial_premise
    @commercial_premise = CommercialPremise.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commercial_premise_params
    params.require(:commercial_premise).permit(:area, :floor, :number_of_premises, :plot_of_land, :commercial_premises_kind_id,
                                               lot_attributes: [:id, :title, :description, :price, :asignee_id, :client_id, :deal_type_id, { address_attributes: %i[id building description street_id] }, { images: [] }])
  end
end
