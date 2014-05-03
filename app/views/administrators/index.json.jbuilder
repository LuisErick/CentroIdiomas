json.array!(@administrators) do |administrator|
  json.extract! administrator, :id, :administrative_id
  json.url administrator_url(administrator, format: :json)
end
