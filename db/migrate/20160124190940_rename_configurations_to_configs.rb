class RenameConfigurationsToConfigs < ActiveRecord::Migration
  def self.up
    rename_table :configurations, :configs
  end

  def self.down
    rename_table :configurations, :configs
  end
end
