json.array!(@scores) do |score|
  json.extract! score, :id, :score_type_id, :matriculation_course_id, :value, :date
  json.url score_url(score, format: :json)
end
