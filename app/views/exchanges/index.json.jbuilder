json.array!(@exchanges) do |exchange|
  json.extract! exchange, :id, :description, :payee, :credits, :debits
  json.url exchange_url(exchange, format: :json)
end
