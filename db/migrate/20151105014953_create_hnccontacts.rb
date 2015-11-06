class CreateHnccontacts < ActiveRecord::Migration
  def change
    create_table :hnccontacts do |t|
      t.string :department
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
