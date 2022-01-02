class CreateCountrySideHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :country_side_houses do |t|
      t.decimal :total_area
      t.decimal :land_area
      t.integer :floors_count
      t.integer :year_of_construction
      t.references :wall_material, null: false, foreign_key: true
      t.references :country_side_house_kind, null: false, foreign_key: true
      t.references :ready_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
