class CreateBrandPlatforms < ActiveRecord::Migration
  def change
    create_table :brand_platforms do |t|
      t.belongs_to :brand, index: true
      t.belongs_to :platform, index:true
      t.string :ep
      t.string :pname
      t.string :suite

      t.timestamps null: false
    end
  end
end
