class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :overrides
      t.references :config, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
