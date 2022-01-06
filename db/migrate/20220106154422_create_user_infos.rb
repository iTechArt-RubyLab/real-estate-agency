class CreateUserInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :user_infos do |t|
      t.references :city, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :second_name
      t.date :date_of_birth
      t.integer :gender

      t.timestamps
    end
  end
end
