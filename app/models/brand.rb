class Brand < ActiveRecord::Base
	has_many :configs

	# def initialize(attributes = {})
 #   	@name = attributes[:name]
 #  	@owner= attributes[:owner]
	# end

end
