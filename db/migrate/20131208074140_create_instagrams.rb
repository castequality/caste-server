class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.string :url, null: false
      t.string :thumbnail, null: false

      t.timestamps
    end
  end
end
