class CreateCountrySideHouseKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :country_side_house_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
