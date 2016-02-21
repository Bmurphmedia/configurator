class Brand < ActiveRecord::Base
	has_many :configs
	has_many :pmt_players
	has_many :platforms
	has_many :brand_platforms
	belongs_to :brand_group

	# def initialize(attributes = {})
 #   	@name = attributes[:name]
 #  	@owner= attributes[:owner]
	# end

	# passing a hash with defaults based on current fields db
	#Probably should go away in favor of reccomendation
	def get_defaults
		defaults = {}

		defaults['Owner Org'] = self.owner

		return defaults 


	end

	# Make a recommendation available
	def rec
		return {'owner' => self.owner}
	end

end
