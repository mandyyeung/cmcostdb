json.array!(@subcontractors) do |subcontractor|
  json.extract! subcontractor, :id, :name, :trade, :contract_value
  json.url subcontractor_url(subcontractor, format: :json)
end
