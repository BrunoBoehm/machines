class DropColumnCategoryIdOnSubCategories < ActiveRecord::Migration
  def change
  	remove_column :sub_categories, :category_id
  	add_column :sub_categories, :category_id, :integer
  end
end
