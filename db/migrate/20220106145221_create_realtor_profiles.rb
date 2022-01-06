class CreateRealtorProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :realtor_profiles do |t|
      t.string :registration_number
      t.date :employment_date

      t.timestamps
    end
  end
end
