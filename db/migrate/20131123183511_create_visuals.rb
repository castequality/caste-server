class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.string :source
      t.string :url, null: false
      
      t.timestamps
    end

    add_index :visuals, :url, unique: true
    add_index :visuals, :source
  end
end
