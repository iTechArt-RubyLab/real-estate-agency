json.extract! commercial_premise, :id, :area, :floor, :number_of_premises, :plot_of_land, :commercial_premises_kind_id,
              :created_at, :updated_at
json.url commercial_premise_url(commercial_premise, format: :json)
