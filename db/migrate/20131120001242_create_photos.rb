class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.string :caption

      t.integer :ordinal, null: false, default: 0

      t.integer :imageable_id
      t.string  :imageable_type

      t.timestamps
    end
  end
end
