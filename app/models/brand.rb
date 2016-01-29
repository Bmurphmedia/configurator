class Brand < ActiveRecord::Base
	has_many :configs
	has_many :platforms, through: :brand_platforms

	# def initialize(attributes = {})
 #   	@name = attributes[:name]
 #  	@owner= attributes[:owner]
	# end

end
