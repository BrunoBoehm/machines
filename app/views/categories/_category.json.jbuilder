json.extract! category, :id, :name, :slug, :description, :seo_text, :seo_keywords, :created_at, :updated_at
json.url category_url(category, format: :json)