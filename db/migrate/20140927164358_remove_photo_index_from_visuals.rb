class RemovePhotoIndexFromVisuals < ActiveRecord::Migration
  def change
    remove_index :visuals, column: :photo
    remove_index :visuals, column: :thumbnail
  end
end
