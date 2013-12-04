class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url, null: false
      t.integer :ordinal, null: false, default: 0

      t.integer :contentable_id
      t.string :contentable_type

      t.timestamps
    end

    add_index :videos, :url, unique: true
  end
end
