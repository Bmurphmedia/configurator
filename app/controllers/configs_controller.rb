class ConfigsController < ApplicationController


	def index
		@configs = Config.all

	end

	def new
		@fields = Field.all
		@config = Config.new

	end

	def create
		
		# config_params = params.require[:Config].permit(:name)
		name = params['name']

		redirect_to Configs_path

		# @config = Config.new
		# @config.name = name

		# if @config.save
		# 	redirect_to configurations_path
		# else
			# render :new
		# end
	
	end

	def show

	end





end