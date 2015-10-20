class CreateYearlycalendars < ActiveRecord::Migration
  def change
    create_table :yearlycalendars do |t|
      t.string :month
      t.string :event1
      t.string :event2

      t.timestamps null: false
    end
  end
end
