class DeleteBannersFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :banner, :string, null: false
    remove_column :projects, :banner_hover, :string, null: false
  end
end
