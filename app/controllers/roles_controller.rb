class RolesController < ApplicationController
  include Authenticated
  before_action :set_role, only: %i[show edit update destroy]

  # GET /roles or /roles.json
  def index
    @roles = Role.all
    authorize @roles
    respond_to do |format|
      format.html
      format.json { render json: RoleDatatable.new(params, view_context: view_context, roles: @roles) }
    end
  end

  # GET /roles/1 or /roles/1.json
  def show
    authorize @role
  end

  # GET /roles/new
  def new
    @role = Role.new
    authorize @role
  end

  # GET /roles/1/edit
  def edit
    authorize @role
  end

  # POST /roles or /roles.json
  def create
    @role = Role.new(role_params)
    authorize @role
    respond_to do |format|
      if @role.save
        format.html { redirect_to role_url(@role), notice: 'Role was successfully created.' }
        format.json { render :show, status: :created, location: @role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roles/1 or /roles/1.json
  def update
    authorize @role
    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to role_url(@role), notice: 'Role was successfully updated.' }
        format.json { render :show, status: :ok, location: @role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1 or /roles/1.json
  def destroy
    @role.destroy
    authorize @role
    respond_to do |format|
      format.html { redirect_to roles_url, notice: 'Role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_role
    @role = Role.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def role_params
    params.require(:role).permit(:name, :can_read_lot, :can_edit_lot, :can_asign, :can_read_dictionary,
                                 :can_edit_dictionary, :can_give_permission, :can_work_with_all_property_types, :can_create_role, :can_approve_realtor, :can_freeze_user)
  end
end
