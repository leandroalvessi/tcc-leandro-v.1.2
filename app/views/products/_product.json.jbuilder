json.extract! product, :id, :code, :unit_of_measurement, :quantity, :description, :damage, :balance_id, :product_kind_id, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
