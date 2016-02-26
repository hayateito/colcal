class AddAttachmentAvatarToCombinations < ActiveRecord::Migration
  def self.up
    change_table :combinations do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :combinations, :avatar
  end
end
