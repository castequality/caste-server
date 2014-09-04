class AddDefaultStrings < ActiveRecord::Migration
  def up
    change_column_default :photos, :caption, ""
    change_column_default :visuals, :caption, ""
  end

  def down
    change_column_default :photos, :caption, nil
    change_column_default :visuals, :caption, nil
  end
end
