json.array!(@final_certifications) do |final_certification|
  json.extract! final_certification, :id, :final_grade_id
  json.url final_certification_url(final_certification, format: :json)
end
