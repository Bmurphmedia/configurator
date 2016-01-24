class AddSettingsToConfig < ActiveRecord::Migration
  def change
    add_column :configs, :settings, :text
  end
end
