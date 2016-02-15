class Platform < ActiveRecord::Base
	has_many :configs
	# has_many :brands through: :brand_platforms


	def get_defaults
		hash = {}

		hash['device'] = self.device
		hash['env'] = self.env

		return hash


	end

end
