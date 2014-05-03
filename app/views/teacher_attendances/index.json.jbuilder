json.array!(@teacher_attendances) do |teacher_attendance|
  json.extract! teacher_attendance, :id, :package_id, :state_id, :arrival_time, :dismissal_time
  json.url teacher_attendance_url(teacher_attendance, format: :json)
end
