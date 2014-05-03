json.array!(@references) do |reference|
  json.extract! reference, :id, :noun, :description
  json.url reference_url(reference, format: :json)
end
