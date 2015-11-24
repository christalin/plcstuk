class AddAttachmentImageToPastads < ActiveRecord::Migration
  def self.up
    change_table :pastads do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pastads, :image
  end
end
