class Post < ActiveRecord::Base
  Null = Naught.build do |config|
    config.black_hole
    config.mimic Post
  end

  has_many :videos, as: :contentable
  has_many :photos, as: :contentable

  default_scope { published }

  scope :published, ->{ where("published_at < ?", Time.now) }

  def published?
    (published_at || 1.day.from_now) < Time.now
  end
end