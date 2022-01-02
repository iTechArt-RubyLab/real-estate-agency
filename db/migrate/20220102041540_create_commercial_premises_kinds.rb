class CreateCommercialPremisesKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :commercial_premises_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
