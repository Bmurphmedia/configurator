class PmtPlayer < ActiveRecord::Base
	belongs_to :brand
	has_many :configs
	delegate :mgid, :to => :config, :prefix => 'true'



	# Pull out video type from mgid 
	def video_type

		return self.mgid.split(':')[2]


	end




end
