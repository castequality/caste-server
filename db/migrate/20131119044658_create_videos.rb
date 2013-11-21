class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url, null: false
      t.integer :videoable_id
      t.string :videoable_type

      t.timestamps
    end

    add_index :videos, :url, unique: true
  end
end
