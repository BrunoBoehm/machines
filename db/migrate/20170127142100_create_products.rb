class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.text :imgs
      t.text :short_description
      t.text :long_description
      t.string :material
      t.text :specs
      t.text :options
      t.text :video_links
      t.text :tip
      t.text :pdfs
      t.text :seo_text
      t.text :seo_keywords
      t.text :links
      t.string :productrange_id

      t.timestamps null: false
    end
  end
end
