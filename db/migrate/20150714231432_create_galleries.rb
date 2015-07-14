class CreateGalleries < ActiveRecord::Migration
  def change
  	drop_table :galleries
  	
    create_table :galleries do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
