class DropAndCreateForeignKeysOnProductranges < ActiveRecord::Migration
  def change
  	remove_column :productranges, :brand_id
  	add_column :productranges, :brand_id, :integer  	
  	remove_column :productranges, :sub_category_id
  	add_column :productranges, :sub_category_id, :integer
  end
end
