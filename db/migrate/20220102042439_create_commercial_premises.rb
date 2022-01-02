class CreateCommercialPremises < ActiveRecord::Migration[6.1]
  def change
    create_table :commercial_premises do |t|
      t.decimal :area
      t.integer :floor
      t.integer :number_of_premises
      t.integer :plot_of_land
      t.references :commercial_premises_kind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
