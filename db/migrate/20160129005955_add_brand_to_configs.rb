class AddBrandToConfigs < ActiveRecord::Migration
  def change
    add_reference :configs, :brand, index: true, foreign_key: true
  end
end
