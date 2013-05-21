class AddAttachmentImageToCommunities < ActiveRecord::Migration
  def self.up
    change_table :communities do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :communities, :image
  end
end
