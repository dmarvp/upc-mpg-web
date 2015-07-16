json.array!(@recurrent_transactions) do |recurrent_transaction|
  json.extract! recurrent_transaction, :id, :startdate, :enddate, :period_id, :nextdate, :customer_id
  json.url recurrent_transaction_url(recurrent_transaction, format: :json)
end
