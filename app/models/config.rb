class Config < ActiveRecord::Base

	belongs_to :brand
	belongs_to :platform
	belongs_to :pmt_player
	belongs_to :brand_platform

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

end
