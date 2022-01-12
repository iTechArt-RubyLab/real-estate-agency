class FlatPresenter
  def ordered_renovations
    Renovation.order(:name)
  end

  def ordered_wall_materials
    WallMaterial.order(:name)
  end
end
