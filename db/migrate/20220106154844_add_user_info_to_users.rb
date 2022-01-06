class AddUserInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :user_info, null: true, foreign_key: true
  end
end
