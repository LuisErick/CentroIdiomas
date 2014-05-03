json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :person_id, :grade_id
  json.url teacher_url(teacher, format: :json)
end
