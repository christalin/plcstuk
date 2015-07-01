class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :eventdate
      t.string :uploadedby
      t.string :conductedby
      t.string :phonenos
      t.string :description

      t.timestamps null: false
    end
  end
end
