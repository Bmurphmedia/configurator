class Config < ActiveRecord::Base

	belongs_to :brand
	belongs_to :platform
	belongs_to :pmt_player
	belongs_to :brand_platform

	has_many :recommendations
	#To ollow persisting of settings(not sure if needed)
	serialize :settings

	def calculated_uri(settings, fields)
		uri = "#{settings['http_host']}/#{settings['uri']}?"
		count = fields.count
		index = 0
		fields.each do |field|
			index += 1
			if field.query_string_key != ""
				uri = uri + field.query_string_key + "=" + "#{settings[field.name]}"	
				if index < count
					uri = uri + "&"
				end	
			end	
		end
		return uri
	end

	def recomendations
		#assigning all recs to variables 
		recs = {}		
		brand = brand_platform.brand.rec
		platform = brand_platform.platform.rec	
		brand_platform = self.brand_platform.rec
		brand_group = self.brand_platform.brand.brand_group.rec
		

		video_type = self.pmt_player.video_type
		app = {'application_id'=>self.brand_platform.platform.application_id(video_type)}
		
		recs = recs.merge(brand)
		recs = recs.merge(platform)
		recs = recs.merge(brand_platform)
		recs = recs.merge(brand_group)
		recs = recs.merge(app)

		# Look up a rec from related model

		return recs
	end

end
