class DropAndAddForeignKeysOnProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :productrange_id
  	add_column :products, :productrange_id, :integer
  end
end
