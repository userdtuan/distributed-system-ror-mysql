json.extract! authorized_shop, :id, :name, :address, :owner_name, :product, :created_at, :updated_at
json.url authorized_shop_url(authorized_shop, format: :json)
