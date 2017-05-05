class AddAttachmentPhotoToBoats < ActiveRecord::Migration
  def self.up
    change_table :boats do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :boats, :photo
  end
end
