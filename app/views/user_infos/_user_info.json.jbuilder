json.extract! user_info, :id, :city_id, :first_name, :last_name, :second_name, :date_of_birth, :gender, :created_at,
              :updated_at
json.url user_info_url(user_info, format: :json)
