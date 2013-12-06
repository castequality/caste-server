class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.string :photo, null: false
      t.string :thumbnail, null: false

      t.string :caption

      t.references :source

      t.timestamps
    end

    add_index :visuals, :source_id
    add_index :visuals, :photo, unique: true
    add_index :visuals, :thumbnail, unique: true
  end
end
