class CreateDealTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :deal_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
