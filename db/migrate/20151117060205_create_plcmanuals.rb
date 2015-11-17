class CreatePlcmanuals < ActiveRecord::Migration
  def change
    create_table :plcmanuals do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
