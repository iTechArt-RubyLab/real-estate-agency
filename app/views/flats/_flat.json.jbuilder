json.extract! flat, :id, :rooms_count, :floor, :year_of_construction, :celling_height, :total_area, :living_area,
              :kitchen_area, :renovation_id, :wall_material_id, :created_at, :updated_at
json.url flat_url(flat, format: :json)
