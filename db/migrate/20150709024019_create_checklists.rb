class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :actionid
      t.string :actionitem

      t.timestamps null: false
    end
  end
end
