class WallMaterialsController < ApplicationController
  include Authenticated
  before_action :set_wall_material, only: %i[show edit update destroy]

  # GET /wall_materials or /wall_materials.json
  def index
    @wall_materials = WallMaterial.all
    authorize @wall_materials
    respond_to do |format|
      format.html
      format.json { render json: WallMaterialDatatable.new(params, view_context: view_context, wall_materials: @wall_materials) }
    end
  end

  # GET /wall_materials/1 or /wall_materials/1.json
  def show
    authorize @wall_material
  end

  # GET /wall_materials/new
  def new
    @wall_material = WallMaterial.new
    authorize @wall_material
  end

  # GET /wall_materials/1/edit
  def edit
    authorize @wall_material
  end

  # POST /wall_materials or /wall_materials.json
  def create
    @wall_material = WallMaterial.new(wall_material_params)
    authorize @wall_material
    respond_to do |format|
      if @wall_material.save
        format.html { redirect_to wall_material_url(@wall_material), notice: 'Wall material was successfully created.' }
        format.json { render :show, status: :created, location: @wall_material }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wall_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wall_materials/1 or /wall_materials/1.json
  def update
    authorize @wall_material
    respond_to do |format|
      if @wall_material.update(wall_material_params)
        format.html { redirect_to wall_material_url(@wall_material), notice: 'Wall material was successfully updated.' }
        format.json { render :show, status: :ok, location: @wall_material }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wall_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wall_materials/1 or /wall_materials/1.json
  def destroy
    @wall_material.destroy
    authorize @wall_material
    respond_to do |format|
      format.html { redirect_to wall_materials_url, notice: 'Wall material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wall_material
    @wall_material = WallMaterial.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wall_material_params
    params.require(:wall_material).permit(:name)
  end
end
