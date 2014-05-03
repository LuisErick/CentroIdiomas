json.array!(@payments) do |payment|
  json.extract! payment, :id, :matriculation_id, :date, :amount
  json.url payment_url(payment, format: :json)
end
