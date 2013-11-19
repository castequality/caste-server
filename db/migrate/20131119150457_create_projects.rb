class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :body
      t.boolean :featured, default: false, null: false

      t.datetime :published_at

      t.timestamps
    end
  end
end
