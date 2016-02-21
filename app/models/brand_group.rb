class BrandGroup < ActiveRecord::Base
	has_many :brands

	def rec
		hash={}
		hash['catalog_id']=self.catalog_id
		return hash
	end
end
