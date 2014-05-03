json.array!(@accountants) do |accountant|
  json.extract! accountant, :id, :administrative_id
  json.url accountant_url(accountant, format: :json)
end
