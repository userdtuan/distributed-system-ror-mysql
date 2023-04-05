json.extract! bill, :id, :date, :total_price, :shippingid, :staffid, :created_at, :updated_at
json.url bill_url(bill, format: :json)
