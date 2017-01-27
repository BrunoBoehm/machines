class CreateProductranges < ActiveRecord::Migration
  def change
    create_table :productranges do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.text :imgs
      t.text :seo_text
      t.text :seo_keywords
      t.string :sub_category_id
      t.string :brand_id

      t.timestamps null: false
    end
  end
end
