class RealtorProfilesController < ApplicationController
  include Authenticated
  before_action :set_realtor_profile, only: %i[show edit update destroy]

  # GET /realtor_profiles or /realtor_profiles.json
  def index
    @realtor_profiles = RealtorProfile.all
  end

  # GET /realtor_profiles/1 or /realtor_profiles/1.json
  def show; end

  # GET /realtor_profiles/new
  def new
    @realtor_profile = RealtorProfile.new
  end

  # GET /realtor_profiles/1/edit
  def edit; end

  # POST /realtor_profiles or /realtor_profiles.json
  def create
    @realtor_profile = RealtorProfile.new(realtor_profile_params)

    respond_to do |format|
      if @realtor_profile.save
        format.html do
          redirect_to realtor_profile_url(@realtor_profile), notice: 'Realtor profile was successfully created.'
        end
        format.json { render :show, status: :created, location: @realtor_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @realtor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtor_profiles/1 or /realtor_profiles/1.json
  def update
    respond_to do |format|
      if @realtor_profile.update(realtor_profile_params)
        format.html do
          redirect_to realtor_profile_url(@realtor_profile), notice: 'Realtor profile was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @realtor_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @realtor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtor_profiles/1 or /realtor_profiles/1.json
  def destroy
    @realtor_profile.destroy

    respond_to do |format|
      format.html { redirect_to realtor_profiles_url, notice: 'Realtor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_realtor_profile
    @realtor_profile = RealtorProfile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def realtor_profile_params
    params.require(:realtor_profile).permit(:registration_number, :employment_date)
  end
end
