class ReadyStatesController < ApplicationController
  before_action :set_ready_state, only: %i[show edit update destroy]

  # GET /ready_states or /ready_states.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: ReadyStateDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /ready_states/1 or /ready_states/1.json
  def show; end

  # GET /ready_states/new
  def new
    @ready_state = ReadyState.new
  end

  # GET /ready_states/1/edit
  def edit; end

  # POST /ready_states or /ready_states.json
  def create
    @ready_state = ReadyState.new(ready_state_params)

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
