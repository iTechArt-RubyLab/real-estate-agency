class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :building
      t.text :description
      t.references :street, null: false, foreign_key: true

      t.timestamps
    end
  end
end
