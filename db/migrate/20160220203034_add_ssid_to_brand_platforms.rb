class AddSsidToBrandPlatforms < ActiveRecord::Migration
  def change
    add_column :brand_platforms, :ssid, :string
  end
end
