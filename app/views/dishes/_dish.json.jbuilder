json.extract! dish, :id, :title, :price, :description, :category, :created_at, :updated_at
json.url dish_url(dish, format: :json)
