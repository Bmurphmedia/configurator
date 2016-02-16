class FieldsController < ApplicationController
	
	def index
		@fields = Field.all
	end

	def new
		@field = Field.new
	end

	def create
			@video = Video.new(video_params)

			if @video.save
				flash[:success] = "Video Created!"
				redirect_to videos_path(:id)
			else
				flash[:error] = "Something weird happened"
				render :new
			end

	end

end