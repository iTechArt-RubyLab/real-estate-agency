class CreateLots < ActiveRecord::Migration[6.1]
  def change
    create_table :lots do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :deal_type, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :lotable, polymorphic: true, null: true
      t.references :asigner, null: true, foreign_key: { to_table: :users }
      t.references :asignee, null: true, foreign_key: { to_table: :users }
      t.references :client, null: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
