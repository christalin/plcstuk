class CreateEventchecklists < ActiveRecord::Migration
  def change
    create_table :eventchecklists do |t|
      t.string :eventid
      t.string :checklistid
      t.boolean :completed
      t.string :comments

      t.timestamps null: false
    end
  end
end
