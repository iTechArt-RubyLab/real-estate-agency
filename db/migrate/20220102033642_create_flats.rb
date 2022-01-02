class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.integer :rooms_count
      t.integer :floor
      t.integer :year_of_construction
      t.decimal :celling_height
      t.decimal :total_area
      t.decimal :living_area
      t.decimal :kitchen_area
      t.references :renovation, null: false, foreign_key: true
      t.references :wall_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
