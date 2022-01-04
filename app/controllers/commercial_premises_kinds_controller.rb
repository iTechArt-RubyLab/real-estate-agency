class CommercialPremisesKindsController < ApplicationController
  before_action :set_commercial_premises_kind, only: %i[show edit update destroy]

  # GET /commercial_premises_kinds or /commercial_premises_kinds.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: CommercialPremisesKindDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /commercial_premises_kinds/1 or /commercial_premises_kinds/1.json
  def show; end

  # GET /commercial_premises_kinds/new
  def new
    @commercial_premises_kind = CommercialPremisesKind.new
  end

  # GET /commercial_premises_kinds/1/edit
  def edit; end

  # POST /commercial_premises_kinds or /commercial_premises_kinds.json
  def create
    @commercial_premises_kind = CommercialPremisesKind.new(commercial_premises_kind_params)

    respond_to do |format|
      if @commercial_premises_kind.save
        format.html do
          redirect_to commercial_premises_kind_url(@commercial_premises_kind),
                      notice: 'Commercial premises kind was successfully created.'
        end
        format.json { render :show, status: :created, location: @commercial_premises_kind }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commercial_premises_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercial_premises_kinds/1 or /commercial_premises_kinds/1.json
  def update
    respond_to do |format|
      if @commercial_premises_kind.update(commercial_premises_kind_params)
        format.html do
          redirect_to commercial_premises_kind_url(@commercial_premises_kind),
                      notice: 'Commercial premises kind was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @commercial_premises_kind }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commercial_premises_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercial_premises_kinds/1 or /commercial_premises_kinds/1.json
  def destroy
    @commercial_premises_kind.destroy

    respond_to do |format|
      format.html do
        redirect_to commercial_premises_kinds_url, notice: 'Commercial premises kind was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commercial_premises_kind
    @commercial_premises_kind = CommercialPremisesKind.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commercial_premises_kind_params
    params.require(:commercial_premises_kind).permit(:name)
  end
end
