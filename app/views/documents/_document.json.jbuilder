json.extract! document, :id, :title, :format, :language, :product_id, :created_at, :updated_at
json.url document_url(document, format: :json)
