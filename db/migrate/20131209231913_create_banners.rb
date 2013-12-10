class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image_url, null: false
      t.string :hover_image_url

      t.integer :resource_id, null: false
      t.string  :resource_type, null: false

      t.timestamps
    end

    add_index :banners, [:resource_id, :resource_type]
  end
end
