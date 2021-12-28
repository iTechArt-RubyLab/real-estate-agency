class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :locality_size
      t.integer :region
      t.text :description

      t.timestamps
    end
  end
end
