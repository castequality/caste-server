class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name, null: false
      t.string :author_name

      t.timestamps
    end

    add_index :sources, :name, unique: true
  end
end
