class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text  :body, null: false
      t.datetime :published_at, default: "now()", null: false

      t.timestamps
    end

    add_index :posts, :name, unique: true
  end
end
