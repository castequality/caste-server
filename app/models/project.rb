class Project < ActiveRecord::Base
  Null = Naught.build do |config|
    config.black_hole
    config.mimic Project
  end

  has_many :photos, ->{ order('ordinal ASC') }, as: :imageable

  def self.featured
    find_by(featured: true) || Null.new
  end

  def with_photos(&block)
    photos.each(&block)
  end
end
