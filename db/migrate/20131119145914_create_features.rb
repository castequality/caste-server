class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :body
      t.boolean :featured, default: false, null: false

      t.datetime :published_at

      t.timestamps
    end
  end
end
