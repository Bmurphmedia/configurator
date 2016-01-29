class AddPlatformToConfigs < ActiveRecord::Migration
  def change
    add_reference :configs, :platform, index: true, foreign_key: true
  end
end
