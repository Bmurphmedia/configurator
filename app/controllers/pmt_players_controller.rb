class PmtPlayersController < ApplicationController

	def index
		@players = PmtPlayer.all 

		@brands = Brand.all 


	end



end