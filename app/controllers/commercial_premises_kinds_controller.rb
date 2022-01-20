class CommercialPremisesKindsController < ApplicationController
  include Authenticated
  before_action :set_commercial_premises_kind, only: %i[show edit update destroy]

  # GET /commercial_premises_kinds or /commercial_premises_kinds.json
  def index
    @commercial_premises_kinds = CommercialPremisesKind.all
    authorize @commercial_premises_kinds
    respond_to do |format|
      format.html
      format.json { render json: CommercialPremisesKindDatatable.new(params, view_context: view_context, commercial_premises_kinds: @commercial_premises_kinds) }
    end
  end

  # GET /commercial_premises_kinds/1 or /commercial_premises_kinds/1.json
  def show
    authorize @commercial_premises_kind
  end

  # GET /commercial_premises_kinds/new
  def new
    @commercial_premises_kind = CommercialPremisesKind.new
    authorize @commercial_premises_kind
  end

  # GET /commercial_premises_kinds/1/edit
  def edit
    authorize @commercial_premises_kind
  end

  # POST /commercial_premises_kinds or /commercial_premises_kinds.json
  def create
    @commercial_premises_kind = CommercialPremisesKind.new(commercial_premises_kind_params)
    authorize @commercial_premises_kind
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
    authorize @commercial_premises_kind
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
    authorize @commercial_premises_kind
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
