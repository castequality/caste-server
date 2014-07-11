class UpdatePublishedAt < ActiveRecord::Migration
  DEFAULT_TIME = '2014-06-27 17:30:07'

  def up
    change_column_default :posts, :published_at, nil
    change_column_default :projects, :published_at, nil
    change_column_default :splashes, :published_at, nil
    change_column_default :visuals, :published_at, nil
  end

  def down
    change_column_default :posts, :published_at, DEFAULT_TIME
    change_column_default :projects, :published_at, DEFAULT_TIME
    change_column_default :splashes, :published_at, DEFAULT_TIME
    change_column_default :visuals, :published_at, DEFAULT_TIME
  end
end
