class CreateChangesHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :changes_histories do |t|
      t.string :changes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
