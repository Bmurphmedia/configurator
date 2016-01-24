class ConfigurationsController < ApplicationController


	def index
		@configs = Configuration.all

	end

	def new
		@fields = Field.all
		@config = Configuration.new

	end

	def create
		
		# config_params = params.require[:configuration].permit(:name)
		name = params['name']

		redirect_to configurations_path

		# @config = Configuration.new
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