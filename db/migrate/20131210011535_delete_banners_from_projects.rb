class DeleteBannersFromProjects < ActiveRecord::Migration
  def change
    remove_columns :projects, :banner, :banner_hover
  end
end
