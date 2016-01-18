json.array!(@teams) do |team|
  json.extract! team, :id, :first_name, :last_name, :email
  json.url team_url(team, format: :json)
end
