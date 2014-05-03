json.array!(@matriculation_exams) do |matriculation_exam|
  json.extract! matriculation_exam, :id, :matriculation_id, :teacher_id, :institution
  json.url matriculation_exam_url(matriculation_exam, format: :json)
end
