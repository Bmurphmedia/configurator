class AddBrandGroupToBrand < ActiveRecord::Migration
  def change
    add_reference :brands, :brand_group, index: true, foreign_key: true
  end
end
