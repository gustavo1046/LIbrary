json.extract! book, :id, :name, :subtitle, :release, :created_at, :updated_at
json.url book_url(book, format: :json)
