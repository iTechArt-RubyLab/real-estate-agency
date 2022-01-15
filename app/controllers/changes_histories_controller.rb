class ChangesHistoriesController < ApplicationController\
  include Authenticated
  before_action :set_changes_history, only: %i[show edit update destroy]

  # GET /changes_histories or /changes_histories.json
  def index
    @changes_histories = ChangesHistory.all
  end

  # GET /changes_histories/1 or /changes_histories/1.json
  def show; end

  # GET /changes_histories/new
  def new
    @changes_history = ChangesHistory.new
  end

  # GET /changes_histories/1/edit
  def edit; end

  # POST /changes_histories or /changes_histories.json
  def create
    @changes_history = ChangesHistory.new(changes_history_params)

    respond_to do |format|
      if @changes_history.save
        format.html do
          redirect_to changes_history_url(@changes_history), notice: 'Changes history was successfully created.'
        end
        format.json { render :show, status: :created, location: @changes_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @changes_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /changes_histories/1 or /changes_histories/1.json
  def update
    respond_to do |format|
      if @changes_history.update(changes_history_params)
        format.html do
          redirect_to changes_history_url(@changes_history), notice: 'Changes history was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @changes_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @changes_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /changes_histories/1 or /changes_histories/1.json
  def destroy
    @changes_history.destroy

    respond_to do |format|
      format.html { redirect_to changes_histories_url, notice: 'Changes history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_changes_history
    @changes_history = ChangesHistory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def changes_history_params
    params.require(:changes_history).permit(:changes, :user_id)
  end
end
