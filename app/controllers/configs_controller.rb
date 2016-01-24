class ConfigsController < ApplicationController


	def index
		@configs = Config.all
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