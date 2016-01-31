class AddPmtPlayerToConfig < ActiveRecord::Migration
  def change
    add_reference :configs, :pmt_player, index: true, foreign_key: true
  end
end
