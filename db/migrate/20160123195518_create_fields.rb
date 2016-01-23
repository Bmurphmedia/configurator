class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :platform
      t.string :query_string_key
      t.string :default_value

      t.timestamps null: false
    end
  end
end
