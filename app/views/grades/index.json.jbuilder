json.array!(@grades) do |grade|
  json.extract! grade, :id, :noun, :description
  json.url grade_url(grade, format: :json)
end
