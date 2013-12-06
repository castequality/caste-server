class Post < ActiveRecord::Base
  include Publishable

  Null = Naught.build do |config|
    config.black_hole
    config.mimic Post
  end

  paginates_per 3

  def published?
    (published_at || 1.day.from_now) < Time.now
  end
end