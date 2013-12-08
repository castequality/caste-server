class CreateSplashes < ActiveRecord::Migration
  def change
    create_table :splashes do |t|
      t.string :name
      t.string :video_url, null: false

      t.boolean :featured, default: true, null: false

      t.datetime :published_at, default: "now()", null: false

      t.timestamps
    end
  end
end
