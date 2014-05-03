json.array!(@permissions) do |permission|
  json.extract! permission, :id, :noun, :description
  json.url permission_url(permission, format: :json)
end
