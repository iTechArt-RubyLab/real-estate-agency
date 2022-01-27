class CreateClientProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :client_profiles do |t|
      t.references :country, null: true, foreign_key: true
      t.text :description
      t.string :phone_number

      t.timestamps
    end
  end
end
