class BrandPlatformsController < ApplicationController
	# before_filter :find_brand, only [:index]
	def index
		@brand = Brand.find(params[:brand_id])
		
		@brand_platforms = @brand.brand_platforms
		
		@platforms = []

		@brand_platforms.each do |bp|

			@platforms << Platform.find(bp.platform_id)

		end


	end

end