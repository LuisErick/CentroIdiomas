json.array!(@secretaries) do |secretary|
  json.extract! secretary, :id, :administrative_id
  json.url secretary_url(secretary, format: :json)
end
