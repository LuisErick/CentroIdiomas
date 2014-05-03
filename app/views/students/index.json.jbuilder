json.array!(@students) do |student|
  json.extract! student, :id, :person_id, :reference_id
  json.url student_url(student, format: :json)
end
