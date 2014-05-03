json.array!(@languages) do |language|
  json.extract! language, :id, :noun, :description
  json.url language_url(language, format: :json)
end
