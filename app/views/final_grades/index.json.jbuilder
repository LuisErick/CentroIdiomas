json.array!(@final_grades) do |final_grade|
  json.extract! final_grade, :id, :matriculation_id, :value, :state
  json.url final_grade_url(final_grade, format: :json)
end
