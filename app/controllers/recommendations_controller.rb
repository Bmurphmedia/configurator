class RecommendationsController < ApplicationController


	def new 
		@config = Config.find(params[:config_id])
		
		@recommendation = Recommendation.new
		@recommendation.config_id = @config.id
		@fields = Field.all

		@brand_platform = BrandPlatform.find(@config.brand_platform_id)

		@brand = Brand.find(@brand_platform.brand_id)
		@platform = Platform.find(@brand_platform.platform_id)



		all_defaults = [@brand.get_defaults, @platform.get_defaults, @brand_platform.get_defaults]

		@defaults = self.get_defaults(all_defaults)


	end


	def mediaresolver_url


	end




	def get_defaults(defaults)
		hash = {}

		defaults.each do |default|

			default.each do |key, value|

				hash[key] = value
			end

		end

		return hash

	end


end