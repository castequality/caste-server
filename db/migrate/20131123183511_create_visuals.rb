class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.string :url, null: false
      t.string :caption, default: ""
      t.references :source

      t.timestamps
    end

    add_index :visuals, :source_id
    add_index :visuals, :url, unique: true
  end
end
