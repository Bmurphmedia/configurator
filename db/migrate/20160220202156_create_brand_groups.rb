class CreateBrandGroups < ActiveRecord::Migration
  def change
    create_table :brand_groups do |t|
      t.string :name
      t.string :catalog_id

      t.timestamps null: false
    end
  end
end
