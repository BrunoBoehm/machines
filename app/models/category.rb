class Category < ActiveRecord::Base
	has_many :sub_categories
	has_many :product_ranges, through: :sub_categories
	has_many :products, through: :product_ranges
end
