json.extract! storage, :id, :name, :address, :capacity, :available_capacity, :created_at, :updated_at
json.url storage_url(storage, format: :json)
