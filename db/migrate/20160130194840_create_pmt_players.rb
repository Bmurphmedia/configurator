class CreatePmtPlayers < ActiveRecord::Migration
  def change
    create_table :pmt_players do |t|
      t.string :mgid
      t.string :catalog_id
      t.string :name

      t.timestamps null: false
    end
  end
end
