class Brand < ActiveRecord::Base
	has_many :productranges
	has_many :products, through: :productranges
end
