class ConfigsController < ApplicationController


	def index

		@brand_platform = BrandPlatform.find(params[:brand_platform_id])
		
		@configs = @brand_platform.configs
		
		#Code in case PMT players are needed
		@pmt_players = []

		@configs.each do |config|
			@pmt_players << PmtPlayer.find(config.pmt_player_id)
		end

		@fields = Field.all

	end

	def new
		@fields = Field.all
		@config = Config.new
	end

	def create		
		config = Config.new

		config.name = params['name']
		config.settings = params['settings']

		if config.save
			redirect_to configs_path
		else
			render :new
		end
	
	end

	def show

	end





end