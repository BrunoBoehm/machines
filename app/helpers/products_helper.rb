module ProductsHelper
	def image(product)
		src = product.imgs.split("\r\n").select{ |x| x.match(/(\.jpg|\.png|\.jpeg)$/i) }.first
		src || "http://placekitten.com/500/400"
	end

	def images(product)
		product.imgs.split("\r\n").select{ |x| x.match(/(\.jpg|\.png|\.jpeg)$/i) }
	end

	def completion(product)
		completed = product.attributes.values.select(&:blank?).count
		total = product.attributes.count - 2
		completion = 100 - completed * 100 / total
	end

	def completion_state(product)
		case 
			when completion(product) == 100
				"success"
			when completion(product) < 100 && completion(product) >= 50
				"warning"
			when completion(product) < 50
				"danger"
		end		
	end
end
