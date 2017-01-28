module BrandsHelper

	def images(brand)
		brand.imgs.split("\r\n").select{ |x| x.match(/(\.jpg|\.png|\.jpeg|\.gif)/i) }
	end

end
