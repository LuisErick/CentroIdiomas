json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :days, :numberdays, :arrival_time, :desmissal_time
  json.url schedule_url(schedule, format: :json)
end
