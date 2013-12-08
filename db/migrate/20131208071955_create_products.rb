class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url, null: false
      t.string :thumbnail, null: false

      t.timestamps
    end
  end
end
