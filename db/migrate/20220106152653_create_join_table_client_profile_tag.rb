class CreateJoinTableClientProfileTag < ActiveRecord::Migration[6.1]
  def change
    create_join_table :client_profiles, :tags do |t|
      # t.index [:client_profile_id, :tag_id]
      # t.index [:tag_id, :client_profile_id]
    end
  end
end
