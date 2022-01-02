class CreateReadyStates < ActiveRecord::Migration[6.1]
  def change
    create_table :ready_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
