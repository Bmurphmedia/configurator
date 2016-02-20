class RemoveCatalogIdFromPmtPlayers < ActiveRecord::Migration
  def change
    remove_column :pmt_players, :catalog_id, :string
  end
end
