json.extract! sub_category, :id, :name, :slug, :description, :seo_text, :seo_keywords, :created_at, :updated_at
json.url sub_category_url(sub_category, format: :json)