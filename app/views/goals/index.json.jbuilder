json.array!(@goals) do |goal|
  json.extract! goal, :id, :title, :description, :completed
  json.url goal_url(goal, format: :json)
end
