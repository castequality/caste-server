class Post < ActiveRecord::Base
  has_many :videos, as: :videoable
  has_many :photos, as: :imageable

  default_scope { published }

  scope :published, ->{ where("published_at < ?", Time.now) }
end