class AddAttachmentBoatPicToBoats < ActiveRecord::Migration
  def self.up
    change_table :boats do |t|
      t.attachment :boat_pic
    end
  end

  def self.down
    remove_attachment :boats, :boat_pic
  end
end
