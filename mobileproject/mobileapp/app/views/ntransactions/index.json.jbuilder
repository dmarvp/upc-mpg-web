json.array!(@ntransactions) do |ntransaction|
  json.extract! ntransaction, :id, :datetransaction, :transactiontype, :amount, :description, :category_id, :customer_id
  json.url ntransaction_url(ntransaction, format: :json)
end
