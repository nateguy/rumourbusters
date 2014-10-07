class AddAttachmentMediaToRumours < ActiveRecord::Migration
  def self.up
    change_table :rumours do |t|
      t.attachment :media
    end
  end

  def self.down
    remove_attachment :rumours, :media
  end
end
