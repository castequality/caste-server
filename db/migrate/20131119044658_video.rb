class Video < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url, null: false
      t.references :post

      t.timestamps
    end

    add_index :videos, :url, unique: true
    add_index :videos, :post_id, unique: true
  end
end
