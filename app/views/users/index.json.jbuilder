json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :state, :permission_id
  json.url user_url(user, format: :json)
end
