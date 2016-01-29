class Platform < ActiveRecord::Base
	has_many :configs
	has_many :brands through: :brand_platforms
end
