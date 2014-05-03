json.array!(@packages) do |package|
  json.extract! package, :id, :schedule_id, :teacher_id, :room_id, :date
  json.url package_url(package, format: :json)
end
