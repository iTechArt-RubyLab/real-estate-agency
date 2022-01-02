class CommercialPremisesController < ApplicationController
  before_action :set_commercial_premise, only: %i[show edit update destroy]

  # GET /commercial_premises or /commercial_premises.json
  def index
    @commercial_premises = CommercialPremise.all
  end

  # GET /commercial_premises/1 or /commercial_premises/1.json
  def show; end

  # GET /commercial_premises/new
  def new
    @commercial_premise = CommercialPremise.new
  end

  # GET /commercial_premises/1/edit
  def edit; end

  # POST /commercial_premises or /commercial_premises.json
  def create
    @commercial_premise = CommercialPremise.new(commercial_premise_params)

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
    respond_to do |format|
      if @commercial_premise.update(commercial_premise_params)
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

    respond_to do |format|
      format.html { redirect_to commercial_premises_url, notice: 'Commercial premise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commercial_premise
    @commercial_premise = CommercialPremise.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commercial_premise_params
    params.require(:commercial_premise).permit(:area, :floor, :number_of_premises, :plot_of_land,
                                               :commercial_premises_kind_id)
  end
end
