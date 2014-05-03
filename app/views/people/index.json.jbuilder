json.array!(@people) do |person|
  json.extract! person, :id, :name, :last_name, :age, :dni, :about_me, :user_id
  json.url person_url(person, format: :json)
end
