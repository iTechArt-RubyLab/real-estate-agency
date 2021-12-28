class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :building
      t.integer :number_of_storeys
      t.references :street, null: false, foreign_key: true

      t.timestamps
    end
  end
end
