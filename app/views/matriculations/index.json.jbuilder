json.array!(@matriculations) do |matriculation|
  json.extract! matriculation, :id, :language_id, :student_id, :administrative_id, :course_type_id, :date
  json.url matriculation_url(matriculation, format: :json)
end
