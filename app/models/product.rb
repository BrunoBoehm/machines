class Product < ActiveRecord::Base
	belongs_to :productrange

	def image
		src = self.imgs.split("\r\n").select{ |x| x.match('.jpg' || '.png' || '.jpeg' ) }.first
		src || "http://placekitten.com/500/400"
	end
end
