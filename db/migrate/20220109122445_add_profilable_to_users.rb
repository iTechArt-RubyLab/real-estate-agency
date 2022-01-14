class AddProfilableToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :profilable, polymorphic: true, null: true
  end
end
