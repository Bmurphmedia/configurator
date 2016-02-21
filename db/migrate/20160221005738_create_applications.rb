class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :app_id
      t.string :video_type
      t.references :platform, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
