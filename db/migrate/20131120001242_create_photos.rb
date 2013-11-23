class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption

      t.integer :imageable_id
      t.string :imageable_type
      
      t.string :url

      t.attachment :file

      t.timestamps
    end
  end
end
