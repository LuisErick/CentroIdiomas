json.array!(@unica_students) do |unica_student|
  json.extract! unica_student, :id, :student_id, :faculty_id, :grade_id
  json.url unica_student_url(unica_student, format: :json)
end
