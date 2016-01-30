class AddBrandToPmtPlayer < ActiveRecord::Migration
  def change
    add_reference :pmt_players, :brand, index: true, foreign_key: true
  end
end
