json.array!(@weekly_goals) do |weekly_goal|
  json.extract! weekly_goal, :id, :title, :description, :completed
  json.url weekly_goal_url(weekly_goal, format: :json)
end
