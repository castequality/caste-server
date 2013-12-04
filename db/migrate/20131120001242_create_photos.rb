class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption

      t.integer :contentable_id
      t.string :contentable_type
      t.integer :ordinal, null: false, default: 0
      
      t.string :url

      t.attachment :file

      t.timestamps
    end
  end
end
