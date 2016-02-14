class AddBrandPlatformToConfig < ActiveRecord::Migration
  def change
    add_reference :configs, :brand_platform, index: true, foreign_key: true
  end
end
