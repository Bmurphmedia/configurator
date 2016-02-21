class Platform < ActiveRecord::Base
	has_many :configs
	has_many :applications
	# has_many :brands through: :brand_platforms


	def get_defaults
		hash = {}

		hash['device'] = self.device
		hash['env'] = self.env

		return hash


	end


	def rec
		return {'device' => self.device, 'env' => self.env}
	end

	# returns application_id for given video type 
	def application_id(video_type)
		apps = self.applications 
		apps.each do |app|
			if app.video_type == video_type
				return app.app_id
			else
				return 'not found'

			end
		end

	end

end
