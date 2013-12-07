class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false

      t.boolean :featured, default: false, null: false

      t.string :banner, null: false
      t.string :banner_hover, null: false

      t.string :video_url, null: false

      t.datetime :published_at, default: "now()", null: false

      t.timestamps
    end
  end
end
