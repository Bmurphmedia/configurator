class BrandPlatform < ActiveRecord::Base

	#not sure why breaking things 
	# belongs_to :brand,
	belongs_to :platform 

	has_many :configs
end
