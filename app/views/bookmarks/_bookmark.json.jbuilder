json.extract! bookmark, :id, :title, :url, :short_url, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
