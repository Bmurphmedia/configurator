class Brand < ActiveRecord::Base
	has_many :configs
	has_many :pmt_players
	has_many :platforms
	has_many :brand_platforms

	# def initialize(attributes = {})
 #   	@name = attributes[:name]
 #  	@owner= attributes[:owner]
	# end

end
