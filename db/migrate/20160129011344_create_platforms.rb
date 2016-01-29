class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :device
      t.string :env

      t.timestamps null: false
    end
  end
end
