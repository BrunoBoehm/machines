class Productrange < ActiveRecord::Base
	belongs_to :brand
	belongs_to :sub_category
	has_many :products
end
