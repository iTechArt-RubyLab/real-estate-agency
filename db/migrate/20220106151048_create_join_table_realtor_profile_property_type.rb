class CreateJoinTableRealtorProfilePropertyType < ActiveRecord::Migration[6.1]
  def change
    create_join_table :realtor_profiles, :property_types do |t|
      # t.index [:realtor_profile_id, :property_type_id]
      # t.index [:property_type_id, :realtor_profile_id]
    end
  end
end
