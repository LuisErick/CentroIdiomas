json.array!(@matriculation_courses) do |matriculation_course|
  json.extract! matriculation_course, :id, :level_id, :package_id, :final_grade
  json.url matriculation_course_url(matriculation_course, format: :json)
end
