class CreateEvents < ActiveRecord::Migration
  def change

    create_table :events do |t|
      t.string :name
      t.string :eventdate
      t.string :uploadedby
      t.text :conductedby
      t.text :phonenos
      t.text :description

      t.timestamps null: false
    end
  end
end
