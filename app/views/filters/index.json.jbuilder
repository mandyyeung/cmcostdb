json.array!(@filters) do |filter|
  json.extract! filter, :id, :name, :description, :group
  json.url filter_url(filter, format: :json)
end
