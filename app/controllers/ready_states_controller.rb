class ReadyStatesController < ApplicationController
  include Authenticated
  before_action :set_ready_state, only: %i[show edit update destroy]

  # GET /ready_states or /ready_states.json
  def index
    @ready_states = ReadyState.all
    authorize @ready_states
    respond_to do |format|
      format.html
      format.json { render json: ReadyStateDatatable.new(params, view_context: view_context, ready_states: @ready_states) }
    end
  end

  # GET /ready_states/1 or /ready_states/1.json
  def show
    authorize @ready_state
  end

  # GET /ready_states/new
  def new
    @ready_state = ReadyState.new
    authorize @ready_state
  end

  # GET /ready_states/1/edit
  def edit
    authorize @ready_state
  end

  # POST /ready_states or /ready_states.json
  def create
    @ready_state = ReadyState.new(ready_state_params)
    authorize @ready_state
    respond_to do |format|
      if @ready_state.save
        format.html { redirect_to ready_state_url(@ready_state), notice: 'Ready state was successfully created.' }
        format.json { render :show, status: :created, location: @ready_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ready_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ready_states/1 or /ready_states/1.json
  def update
    authorize @ready_state
    respond_to do |format|
      if @ready_state.update(ready_state_params)
        format.html { redirect_to ready_state_url(@ready_state), notice: 'Ready state was successfully updated.' }
        format.json { render :show, status: :ok, location: @ready_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ready_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ready_states/1 or /ready_states/1.json
  def destroy
    @ready_state.destroy
    authorize @ready_state
    respond_to do |format|
      format.html { redirect_to ready_states_url, notice: 'Ready state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ready_state
    @ready_state = ReadyState.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ready_state_params
    params.require(:ready_state).permit(:name)
  end
end
