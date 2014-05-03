json.array!(@student_attendances) do |student_attendance|
  json.extract! student_attendance, :id, :date, :state_id, :matriculation_course_id
  json.url student_attendance_url(student_attendance, format: :json)
end
