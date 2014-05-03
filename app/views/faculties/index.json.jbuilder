json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :noun, :description
  json.url faculty_url(faculty, format: :json)
end
