json.extract! thing, :id, :title, :description, :content, :uri, :price, :created_at, :likes, :available_at, :discount, :is_available, :keywords, :slug, :created_at, :updated_at
json.url thing_url(thing, format: :json)
