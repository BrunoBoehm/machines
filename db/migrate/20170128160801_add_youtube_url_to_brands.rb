class AddYoutubeUrlToBrands < ActiveRecord::Migration
  def change
  	add_column :brands, :youtube_url, :string
  end
end
