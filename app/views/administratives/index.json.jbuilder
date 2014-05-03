json.array!(@administratives) do |administrative|
  json.extract! administrative, :id, :person_id
  json.url administrative_url(administrative, format: :json)
end
