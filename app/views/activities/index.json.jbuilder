json.array!(@activities) do |activity|
  json.extract! activity, :id, :date, :client, :description, :hours, :billable, :posted, :user_id
  json.url activity_url(activity, format: :json)
end
