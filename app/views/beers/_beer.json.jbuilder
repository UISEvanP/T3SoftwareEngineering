json.extract! beer, :id, :name, :category, :description, :created_at, :updated_at
json.url beer_url(beer, format: :json)
