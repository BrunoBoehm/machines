class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :productranges
	has_many :products, through: :productranges
end
