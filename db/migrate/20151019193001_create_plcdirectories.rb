class CreatePlcdirectories < ActiveRecord::Migration
  def change
    create_table :plcdirectories do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :term

      t.timestamps null: false
    end
  end
end
