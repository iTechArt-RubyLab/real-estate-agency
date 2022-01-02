class CreateWallMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :wall_materials do |t|
      t.string :name

      t.timestamps
    end
  end
end
