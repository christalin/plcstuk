class CreateChklistdata < ActiveRecord::Migration
  def change
    create_table :chklistdata do |t|
      t.string :evntid
      t.string :chklstid
      t.string :assignedto
      t.string :completed
      t.string :comments

      t.timestamps null: false
    end
  end
end
