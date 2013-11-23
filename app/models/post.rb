class Post < ActiveRecord::Base
  Null = Naught.build do |config|
    config.black_hole
    config.mimic Post
  end

  has_many :videos, as: :videoable
  has_many :photos, as: :imageable

  default_scope { published }

  scope :published, ->{ where("published_at < ?", Time.now) }
end