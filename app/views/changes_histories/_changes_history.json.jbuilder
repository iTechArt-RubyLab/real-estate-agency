json.extract! changes_history, :id, :changes, :user_id, :created_at, :updated_at
json.url changes_history_url(changes_history, format: :json)
