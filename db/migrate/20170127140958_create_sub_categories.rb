class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.text :seo_text
      t.text :seo_keywords
      t.string :category_id

      t.timestamps null: false
    end
  end
end
