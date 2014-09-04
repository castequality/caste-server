class AddTumblrIdToVisuals < ActiveRecord::Migration
  def change
    add_column :visuals, :tumblr_id, :string, null: false
    add_index :visuals, :tumblr_id, unique: true
  end
end
