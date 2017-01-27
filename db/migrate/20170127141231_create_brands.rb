class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :slug
      t.string :site_url
      t.text :description
      t.text :imgs
      t.text :seo_text
      t.text :seo_keywords
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url      

      t.timestamps null: false
    end
  end
end
