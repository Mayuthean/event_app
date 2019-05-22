class AddAttachmentImagesToEvents < ActiveRecord::Migration[5.1]
  def self.up
    change_table :events do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :events, :images
  end
end
