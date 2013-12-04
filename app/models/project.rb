class Project < ActiveRecord::Base
  Null = Naught.build do |config|
    config.black_hole
    config.mimic Project
  end

  BANNER_DIMENSIONS = "750x118#"

  has_many :photos, as: :contentable, class_name: Photo
  has_one :video, as: :contentable, class_name: Video
  
  def self.featured
    find_by(featured: true) || Null.new
  end

  def with_video(&block)
    if video.present? && block_given?
      yield video
    end
  end

  def with_photos(&block)
    photos.each(&block)
  end
end
