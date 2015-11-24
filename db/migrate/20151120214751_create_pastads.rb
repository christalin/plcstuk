class CreatePastads < ActiveRecord::Migration
  def change
    create_table :pastads do |t|
      t.string :name
      t.string :date

      t.timestamps null: false
    end
  end
end
