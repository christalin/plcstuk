class CreatePlcchecklists < ActiveRecord::Migration
  def change
    create_table :plcchecklists do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
