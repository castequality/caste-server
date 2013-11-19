class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.datetime :published_at

      t.timestamps
    end
    
    add_index :posts, :title, unique: true
    add_index :posts, [:title, :body]
  end
end
