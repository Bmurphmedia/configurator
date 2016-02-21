class BrandPlatform < ActiveRecord::Base

	#not sure why breaking things 
	belongs_to :brand
	belongs_to :platform 

	has_many :configs

	def get_defaults
		hash = {}
		hash['ep'] = self.ep
		hash['Application Name'] = self.pname
		hash['Suite'] = self.suite

		return hash

	end


	def rec
		hash = {}
		unless !self.ep
			hash['ep'] = self.ep
		end
		hash['pname'] = self.pname
		hash['suite'] = self.suite


		return hash
	end

end
