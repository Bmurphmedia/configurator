class PmtPlayer < ActiveRecord::Base
	belongs_to :brand
	has_many :configs
	delegate :mgid, :to => :config, :prefix => 'true'
end
